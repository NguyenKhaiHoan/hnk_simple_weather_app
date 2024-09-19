import 'package:dartz/dartz.dart';
import 'package:hnk_simple_weather_app/src/core/network/exception_handler.dart';
import 'package:hnk_simple_weather_app/src/domain/entities/responses/location_search_entity.dart';

abstract class GeocodingRepository {
  Future<Either<ExceptionHandler, LocationSearchEntity>> searchLocation(
      String location);
}
