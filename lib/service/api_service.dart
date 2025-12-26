import 'dart:async';
import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:meenmanam/common/constant.dart';
import 'package:meenmanam/service/api_result.dart';
import 'package:path_provider/path_provider.dart';

class DioService {
  static final DioService _instance = DioService._internal();
  late Dio _dio;
  final _storage = const FlutterSecureStorage();
  String? _accessToken;
  String? _refreshToken;
  late CacheOptions _cacheOptions;

  static const Duration _timeout = Duration(seconds: 30);
  static const Duration _retryDelay = Duration(seconds: 1);
  static const int _maxRetries = 3;

  factory DioService() => _instance;

  Future<void> clearToken() async {
    _accessToken = null;
    _refreshToken = null;
    await _storage.deleteAll();
    _dio.options.headers.remove('Authorization');
  }

  DioService._internal() {
    initializeDio();
    loadTokens();
  }

  Future<void> initializeDio() async {
    final dir = await getTemporaryDirectory();
    _cacheOptions = CacheOptions(
      store: HiveCacheStore(dir.path),
      policy: CachePolicy.noCache,
      hitCacheOnErrorExcept: [401, 403],
      maxStale: const Duration(days: 1),
      priority: CachePriority.normal,
      keyBuilder: (request) {
        final data = request.data;
        final dataHash = data != null ? data.hashCode.toString() : '';
        return '${request.method}_${request.path}_$dataHash';
      },
    );

    _dio = Dio(
      BaseOptions(
        baseUrl: ApiConstant.baseUrl,
        connectTimeout: _timeout,
        receiveTimeout: _timeout,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    await _setupInterceptors();
    await loadTokens(); // Ensure tokens are loaded after setup
  }

  Future<void> _handleAuthenticationFailure() async {
    try {
      final response = await _refreshAccessToken();

      if (response.statusCode == 200 && response.data != null) {
        final data = response.data as Map<String, dynamic>;
        if (data['isSuccess'] == true && data['response'] != null) {
          await setTokens(
            accessToken: data['response']['accessToken'] as String?,
            refreshToken: data['response']['refreshToken'] as String?,
          );
          return;
        }
      }

      // Clear tokens if refresh fails
      await clearToken();
      _showErrorSnackbar('Session expired. Please login again.');
    } catch (e) {
      debugPrint('Error refreshing token: $e');
      await clearToken();
      _showErrorSnackbar('Authentication failed. Please login again.');
    } finally {}
  }

  Future<Response> _refreshAccessToken() async {
    try {
      if (_refreshToken == null) {
        throw Exception('Refresh token is null');
      }

      final response = await _dio.post(
        '/identityapi/Token/Refresh',
        data: {'refreshToken': _refreshToken},
      );

      if (response.statusCode != 200) {
        throw DioException(
          response: response,
          requestOptions: response.requestOptions,
          type: DioExceptionType.badResponse,
        );
      }

      final data = response.data as Map<String, dynamic>;
      if (data['isSuccess'] != true) {
        throw DioException(
          response: response,
          requestOptions: response.requestOptions,
          type: DioExceptionType.badResponse,
          message:
              'Token refresh failed: ${data['message'] ?? 'Unknown error'}',
        );
      }

      if (data['response'] == null) {
        throw DioException(
          response: response,
          requestOptions: response.requestOptions,
          type: DioExceptionType.badResponse,
          message: 'Missing response data in token refresh',
        );
      }

      return response;
    } catch (e) {
      debugPrint('Error refreshing token: $e');
      rethrow;
    }
  }

  // HTTP methods with retry logic
  Future<ApiResult<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    CachePolicy? cachePolicy,
    Options? options,
  }) async {
    try {
      final mergedOptions = _mergeOptions(options, cachePolicy);
      final response = await _dio.get(
        path,
        queryParameters: queryParameters,
        options: mergedOptions,
      );
      return ApiResult<T>.fromResponse(response);
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        await _handleAuthenticationFailure();
        return get<T>(
          path,
          queryParameters: queryParameters,
          cachePolicy: cachePolicy,
          options: options,
        );
      }
      throw ApiException.fromDioError(e);
    }
  }

  Future<ApiResult<T>> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      return ApiResult<T>.fromResponse(response);
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        await _handleAuthenticationFailure();
        return post<T>(
          path,
          data: data,
          queryParameters: queryParameters,
          options: options,
        );
      }
      throw ApiException.fromDioError(e);
    }
  }

  Future<ApiResult<T>> put<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.put(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      return ApiResult<T>.fromResponse(response);
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        await _handleAuthenticationFailure();
        return put<T>(
          path,
          data: data,
          queryParameters: queryParameters,
          options: options,
        );
      }
      throw ApiException.fromDioError(e);
    }
  }

  Future<ApiResult<T>> delete<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.delete(
        path,
        queryParameters: queryParameters,
        options: options,
      );
      return ApiResult<T>.fromResponse(response);
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        await _handleAuthenticationFailure();
        return delete<T>(
          path,
          queryParameters: queryParameters,
          options: options,
        );
      }
      throw ApiException.fromDioError(e);
    }
  }

  Future<ApiResult<T>> uploadFile<T>(
    String path,
    String filePath, {
    String fileField = 'file',
    Map<String, dynamic>? extraData,
    Options? options,
    void Function(int, int)? onSendProgress,
  }) async {
    try {
      final formData = FormData();

      // Add the file
      formData.files.add(
        MapEntry(fileField, await MultipartFile.fromFile(filePath)),
      );

      // Add any extra fields
      if (extraData != null) {
        extraData.forEach((key, value) {
          formData.fields.add(MapEntry(key, value.toString()));
        });
      }

      final response = await _dio.post(
        path,
        data: formData,
        options: options,
        onSendProgress: onSendProgress,
      );

      return ApiResult<T>.fromResponse(response);
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        await _handleAuthenticationFailure();
        return uploadFile<T>(
          path,
          filePath,
          fileField: fileField,
          extraData: extraData,
          options: options,
          onSendProgress: onSendProgress,
        );
      }
      throw ApiException.fromDioError(e);
    }
  }

  Future<void> _setupInterceptors() async {
    _dio.interceptors.clear();

    // Cache interceptor
    _dio.interceptors.add(DioCacheInterceptor(options: _cacheOptions));

    // Retry interceptor
    _dio.interceptors.add(
      RetryInterceptor(
        dio: _dio,
        logPrint: debugPrint,
        retries: _maxRetries,
        retryDelays: List.generate(
          _maxRetries,
          (index) => _retryDelay * (index + 1),
        ),
      ),
    );

    // Error interceptor
    _dio.interceptors.add(InterceptorsWrapper(onError: _onError));

    // Request interceptor
    _dio.interceptors.add(InterceptorsWrapper(onRequest: _onRequest));

    // Response interceptor
    _dio.interceptors.add(InterceptorsWrapper(onResponse: _onResponse));
  }

  Future<void> _onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (_accessToken != null) {
      options.headers['Authorization'] = 'Bearer $_accessToken';
    }
    handler.next(options);
  }

  void _onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }

  void _onError(DioException err, ErrorInterceptorHandler handler) {
    debugPrint('Dio error: ${err.message}');
    debugPrint('Dio error response: ${err.response}');
    debugPrint('Dio error type: ${err.type}');
    _showErrorSnackbar(err.message ?? 'An error occurred');
    handler.next(err);
  }

  void _showErrorSnackbar(String message) {
    if (message.isNotEmpty) {
      debugPrint('Showing error snackbar: $message');
      // This is just for logging, actual snackbar showing should be handled by the UI
    }
  }

  Future<void> loadTokens() async {
    try {
      _accessToken = await _storage.read(key: 'access_token');
      _refreshToken = await _storage.read(key: 'refresh_token');
    } catch (e) {
      debugPrint('Error loading tokens: $e');
      await clearToken();
    }
  }

  Future<void> setTokens({String? accessToken, String? refreshToken}) async {
    try {
      if (accessToken != null) {
        _accessToken = accessToken;
        await _storage.write(key: 'access_token', value: accessToken);
      }
      if (refreshToken != null) {
        _refreshToken = refreshToken;
        await _storage.write(key: 'refresh_token', value: refreshToken);
      }
    } catch (e) {
      debugPrint('Error setting tokens: $e');
      await clearToken();
    }
  }

  Future<void> _clearTokens() async {
    try {
      await _storage.deleteAll();
      _accessToken = null;
      _refreshToken = null;
    } catch (e) {
      debugPrint('Error clearing tokens: $e');
    }
  }

  Options _mergeOptions(Options? options, CachePolicy? cachePolicy) {
    final merged = options?.copyWith() ?? Options();
    if (cachePolicy != null) {
      merged.extra ??= {};
      merged.extra!['cachePolicy'] = cachePolicy;
    }
    return merged;
  }

  static void clearInstances() {
    _instance._clearTokens();
  }
}
