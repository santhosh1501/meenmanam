import 'package:dio/dio.dart';

class ApiResult<T> {
  final bool success;
  final T? data;
  final String? message;
  final int? statusCode;
  final Map<String, List<String>>? validationErrors;

  bool get isSuccess => success;

  ApiResult({
    required this.success,
    this.data,
    this.message,
    this.statusCode,
    this.validationErrors,
  });

  factory ApiResult.success(T data, {int? statusCode}) {
    return ApiResult(
      success: true,
      data: data,
      statusCode: statusCode,
    );
  }

  factory ApiResult.error(
    String message, {
    int? statusCode,
    Map<String, List<String>>? validationErrors,
  }) {
    return ApiResult(
      success: false,
      message: message,
      statusCode: statusCode,
      validationErrors: validationErrors,
    );
  }

  factory ApiResult.fromResponse(Response response) {
    final statusCode = response.statusCode;
    final data = response.data;

    if (statusCode! >= 200 && statusCode < 300) {
      return ApiResult.success(data, statusCode: statusCode);
    } else {
      String message = 'Unknown error occurred';
      Map<String, List<String>>? validationErrors;

      if (data is Map<String, dynamic>) {
        message = data['message'] ?? message;
        if (data['errors'] != null && data['errors'] is Map) {
          validationErrors = _parseValidationErrors(data['errors']);
        }
      }

      return ApiResult.error(
        message,
        statusCode: statusCode,
        validationErrors: validationErrors,
      );
    }
  }

  static Map<String, List<String>> _parseValidationErrors(Map<String, dynamic> errors) {
    final result = <String, List<String>>{};
    errors.forEach((key, value) {
      if (value is List) {
        result[key] = value.map((e) => e.toString()).toList();
      } else {
        result[key] = [value.toString()];
      }
    });
    return result;
  }
}

class ApiException implements Exception {
  final String message;
  final int? statusCode;
  final Map<String, List<String>>? validationErrors;

  ApiException({
    required this.message,
    this.statusCode,
    this.validationErrors,
  });

  @override
  String toString() => message;

  factory ApiException.fromDioError(DioException error) {
    if (error.type == DioExceptionType.connectionTimeout ||
        error.type == DioExceptionType.sendTimeout ||
        error.type == DioExceptionType.receiveTimeout) {
      return ApiException(message: 'Connection timed out', statusCode: 408);
    }

    if (error.type == DioExceptionType.connectionError) {
      return ApiException(message: 'No internet connection');
    }

    if (error.response != null) {
      final statusCode = error.response?.statusCode;
      String message = 'Unknown error occurred';
      Map<String, List<String>>? validationErrors;

      if (error.response?.data is Map<String, dynamic>) {
        final data = error.response?.data as Map<String, dynamic>;
        message = data['message'] ?? message;
        if (data['errors'] != null && data['errors'] is Map) {
          validationErrors = ApiResult._parseValidationErrors(data['errors']);
        }
      }

      return ApiException(
        message: message,
        statusCode: statusCode,
        validationErrors: validationErrors,
      );
    }

    return ApiException(message: error.message ?? 'An unexpected error occurred');
  }
}
