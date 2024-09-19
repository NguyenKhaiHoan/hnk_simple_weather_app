import 'package:freezed_annotation/freezed_annotation.dart';
part 'exception_handler.freezed.dart';

@freezed
class ExceptionHandler with _$ExceptionHandler {
  const factory ExceptionHandler.requestCancelled() = RequestCancelled;
  const factory ExceptionHandler.unauthorizedRequest(String message) =
      UnauthorizedRequest;
  const factory ExceptionHandler.badRequest() = BadRequest;
  const factory ExceptionHandler.notFound(String reason) = NotFound;
  const factory ExceptionHandler.methodNotAllowed() = MethodNotAllowed;
  const factory ExceptionHandler.conflict() = Conflict;
  const factory ExceptionHandler.internalServerError() = InternalServerError;
  const factory ExceptionHandler.notImplemented() = NotImplemented;
  const factory ExceptionHandler.serviceUnavailable() = ServiceUnavailable;
  const factory ExceptionHandler.noInternetConnection() = NoInternetConnection;
  const factory ExceptionHandler.badGateway() = BadGateway;
  const factory ExceptionHandler.gatewayTimeout() = GatewayTimeout;
  const factory ExceptionHandler.networkAuthRequired() = NetworkAuthRequired;
  const factory ExceptionHandler.forbidden() = Forbidden;
  const factory ExceptionHandler.unexpectedError() = UnexpectedError;

  static String getErrorMessage(
    final ExceptionHandler exceptionHandler, {
    final bool showInLog = true,
    final dynamic stackTrace,
  }) {
    return exceptionHandler.when(
      requestCancelled: () => 'The request was cancelled. Please try again.',
      unauthorizedRequest: (message) => message.isNotEmpty
          ? message
          : 'Unauthorized access. Please check your credentials.',
      badRequest: () => 'The request was invalid. Please verify your inputs.',
      notFound: (reason) =>
          reason.isNotEmpty ? reason : 'The requested resource was not found.',
      methodNotAllowed: () =>
          'The HTTP method used is not allowed for this resource.',
      conflict: () =>
          'A conflict occurred with the current state of the resource.',
      internalServerError: () =>
          'An internal server error occurred. Please try again later.',
      notImplemented: () => 'The requested feature is not implemented yet.',
      serviceUnavailable: () =>
          'The service is currently unavailable. Please try again later.',
      noInternetConnection: () =>
          'No internet connection. Please check your network settings.',
      badGateway: () =>
          'The server received an invalid response from an upstream server.',
      gatewayTimeout: () =>
          'The server, while acting as a gateway, timed out waiting for another server.',
      networkAuthRequired: () =>
          'Network authentication is required to access the resource.',
      forbidden: () => 'You do not have permission to access this resource.',
      unexpectedError: () => 'An unexpected error occurred. Please try again.',
    );
  }

  factory ExceptionHandler.handleResponse(final int statusCode, {stackTrace}) {
    switch (statusCode) {
      case 400:
        return const ExceptionHandler.badRequest();
      case 401:
        return const ExceptionHandler.unauthorizedRequest(
            'Unauthorized access. Please verify your credentials.');
      case 403:
        return const ExceptionHandler.forbidden();
      case 404:
        return const ExceptionHandler.notFound(
            'The requested resource could not be found.');
      case 405:
        return const ExceptionHandler.methodNotAllowed();
      case 409:
        return const ExceptionHandler.conflict();
      case 500:
        return const ExceptionHandler.internalServerError();
      case 501:
        return const ExceptionHandler.notImplemented();
      case 502:
        return const ExceptionHandler.badGateway();
      case 503:
        return const ExceptionHandler.serviceUnavailable();
      case 504:
        return const ExceptionHandler.gatewayTimeout();
      case 511:
        return const ExceptionHandler.networkAuthRequired();
      default:
        return const ExceptionHandler.unexpectedError();
    }
  }
}
