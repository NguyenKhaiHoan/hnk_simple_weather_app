import 'package:dartz/dartz.dart';
import 'package:hnk_simple_weather_app/src/core/network/exception_handler.dart';
import 'package:hnk_simple_weather_app/src/core/usecases/usecases.dart';
import 'package:hnk_simple_weather_app/src/domain/entities/responses/location_search_entity.dart';
import 'package:hnk_simple_weather_app/src/domain/repositories/geocoding_repo.dart';

class SearchLocationUseCase
    implements UseCaseRemote<ExceptionHandler, LocationSearchEntity, String> {
  final GeocodingRepository _geocodingRepository;

  SearchLocationUseCase(this._geocodingRepository);

  @override
  Future<Either<ExceptionHandler, LocationSearchEntity>> call(
      {String? params}) {
    return _geocodingRepository.searchLocation(params!);
  }
}
