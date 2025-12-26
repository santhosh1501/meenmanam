class ApiError implements Exception {
  final String message;
  final int? statusCode;
  final dynamic error;

  ApiError({
    required this.message,
    this.statusCode,
    this.error,
  });

  @override
  String toString() => message;
}

class NetworkError extends ApiError {
  NetworkError({String? message})
      : super(message: message ?? 'Network connection error');
}

class UnauthorizedError extends ApiError {
  UnauthorizedError({String? message})
      : super(message: message ?? 'Unauthorized access', statusCode: 401);
}

class ValidationError extends ApiError {
  final Map<String, List<String>>? errors;

  ValidationError({String? message, this.errors})
      : super(message: message ?? 'Validation failed', statusCode: 422);
}

class ServerError extends ApiError {
  ServerError({String? message})
      : super(message: message ?? 'Internal server error', statusCode: 500);
}
