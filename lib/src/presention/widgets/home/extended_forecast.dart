import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hnk_simple_weather_app/src/core/constants/constants.dart';
import 'package:hnk_simple_weather_app/src/core/utils/weather_util.dart';
import 'package:hnk_simple_weather_app/src/di/dependency_injection.dart';
import 'package:hnk_simple_weather_app/src/domain/entities/responses/daily_entity.dart';
import 'package:hnk_simple_weather_app/src/presention/widgets/home/extended_forecast_item.dart';

class ExtendedForecastWidget extends StatelessWidget {
  const ExtendedForecastWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: hAppDefaultPaddingB,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitleExtendedForecast(context),
          gapH12,
          _buildListExtendedForecast(context)
        ],
      ),
    );
  }

  Widget _buildTitleExtendedForecast(BuildContext context) {
    return Text(
      AppLocalizations.of(context)!.sixDaysForecast,
      style: HAppStyle.heading4(context),
    );
  }

  Widget _buildListExtendedForecast(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        var viewModel = ref.watch(homeViewModelProvider);
        final dailyWeather = viewModel.weather.daily ?? DailyEntity.empty;
        final lengthList = dailyWeather.temperature2MMax?.length ?? 0;
        return ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              var weather = viewModel.getWeatherDailyFromCode(index + 1);
              return ExtenedForecastItemWidget(
                temp: viewModel.getTemperatureDaily(addDay: index + 1),
                time: viewModel.getTimeDaily(index + 1),
                iconData: WeatherUtil.getWeatherIcon(weather),
                weather: WeatherUtil.getWeatherDescription(weather, context),
              );
            },
            separatorBuilder: (context, index) => gapH8,
            itemCount: lengthList - 1);
      },
    );
  }
}
