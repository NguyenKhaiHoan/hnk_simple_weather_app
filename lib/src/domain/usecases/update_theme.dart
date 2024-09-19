import 'package:hnk_simple_weather_app/src/core/usecases/usecases.dart';
import 'package:hnk_simple_weather_app/src/domain/repositories/app_repo.dart';

class UpdateThemeUseCase implements UseCaseLocal<void, String> {
  final AppRepository _appRepository;

  UpdateThemeUseCase(this._appRepository);

  @override
  void call({String? params}) {
    return _appRepository.updateTheme(params!);
  }
}
