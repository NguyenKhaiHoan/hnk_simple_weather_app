import 'package:dio/dio.dart';
import 'package:hnk_simple_weather_app/src/core/api/api.dart';
import 'package:hnk_simple_weather_app/src/data/models/location_search_model.dart';
import 'package:retrofit/retrofit.dart';

part 'geocoding_api_service.g.dart';

@RestApi(baseUrl: HAppApi.geocodingBaseUrl)
abstract class GeocodingApiService {
  factory GeocodingApiService(Dio dio) = _GeocodingApiService;

  /// Search City
  /// required [name]
  /// return [LocationSearchModel]
  @GET('/v1/search?name={location}&count=1')
  Future<HttpResponse<LocationSearchModel>> searchLocation({
    @Path('location') required String location,
  });
}
