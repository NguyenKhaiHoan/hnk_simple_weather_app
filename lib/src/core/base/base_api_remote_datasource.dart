import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:hnk_simple_weather_app/src/core/network/exception_handler.dart';
import 'package:retrofit/dio.dart';

abstract class BaseApiRemoteDatasource {
  Future<Either<ExceptionHandler, T>> handleApiCall<T>(
      {required Future<HttpResponse> Function() apiCall,
      required T Function(dynamic data) modelToEntity}) async {
    try {
      final httpResponse = await apiCall();
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        final model = httpResponse.data;
        final entity = modelToEntity(model);
        return Right(entity);
      }
      return Left(
          ExceptionHandler.handleResponse(httpResponse.response.statusCode!));
    } on ExceptionHandler catch (e) {
      return Left(e);
    }
  }
}
