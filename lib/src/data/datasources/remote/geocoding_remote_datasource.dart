import 'package:dartz/dartz.dart';
import 'package:hnk_simple_weather_app/src/core/base/base_api_remote_datasource.dart';
import 'package:hnk_simple_weather_app/src/core/network/exception_handler.dart';
import 'package:hnk_simple_weather_app/src/core/service/geocoding_api_service.dart';
import 'package:hnk_simple_weather_app/src/data/mappers/mapper.dart';
import 'package:hnk_simple_weather_app/src/domain/entities/responses/location_search_entity.dart';

abstract class GeocodingRemoteDatasource {
  Future<Either<ExceptionHandler, LocationSearchEntity>> searchLocation(
      String location);
}

class GeocodingRemoteDatasourceImpl extends BaseApiRemoteDatasource
    implements GeocodingRemoteDatasource {
  GeocodingRemoteDatasourceImpl(this._geocodingApiService);

  final GeocodingApiService _geocodingApiService;

  @override
  Future<Either<ExceptionHandler, LocationSearchEntity>> searchLocation(
      String location) async {
    return handleApiCall<LocationSearchEntity>(
        apiCall: () => _geocodingApiService.searchLocation(location: location),
        modelToEntity: (model) => LocationSearchMapper().modelToEntity(model));
  }
}
