import 'package:hnk_simple_weather_app/src/core/usecases/usecases.dart';
import 'package:hnk_simple_weather_app/src/domain/repositories/app_repo.dart';

class GetLocalThemeUseCase implements UseCaseLocal<String, void> {
  final AppRepository _appRepository;

  GetLocalThemeUseCase(this._appRepository);

  @override
  String call({void params}) {
    return _appRepository.getLocalTheme();
  }
}
