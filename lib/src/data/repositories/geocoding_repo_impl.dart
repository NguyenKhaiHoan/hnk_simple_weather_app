import 'package:dartz/dartz.dart';
import 'package:hnk_simple_weather_app/src/core/network/exception_handler.dart';
import 'package:hnk_simple_weather_app/src/data/datasources/remote/geocoding_remote_datasource.dart';
import 'package:hnk_simple_weather_app/src/domain/entities/responses/location_search_entity.dart';
import 'package:hnk_simple_weather_app/src/domain/repositories/geocoding_repo.dart';

class GeocodingRepositoryImpl implements GeocodingRepository {
  final GeocodingRemoteDatasource _geocodingRemoteDatasource;

  GeocodingRepositoryImpl(this._geocodingRemoteDatasource);

  @override
  Future<Either<ExceptionHandler, LocationSearchEntity>> searchLocation(
      String location) {
    return _geocodingRemoteDatasource.searchLocation(location);
  }
}
