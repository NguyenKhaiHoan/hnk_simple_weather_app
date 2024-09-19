import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hnk_simple_weather_app/src/core/constants/constants.dart';
import 'package:hnk_simple_weather_app/src/core/utils/weather_util.dart';
import 'package:hnk_simple_weather_app/src/di/dependency_injection.dart';
import 'package:hnk_simple_weather_app/src/presention/widgets/home/hourly_forecast_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HourlyForecastWidget extends ConsumerWidget {
  const HourlyForecastWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTitleHourlyForecast(context),
        gapH12,
        _buildListHourlyForecast(context)
      ],
    );
  }

  Widget _buildTitleHourlyForecast(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AppLocalizations.of(context)!.hourlyForecast,
          style: HAppStyle.label2Bold(context)
              .copyWith(color: HAppColor.darkPrimaryText),
        ),
        InkWell(
          onTap: () {},
          child: Text(
            AppLocalizations.of(context)!.seeMore,
            style: HAppStyle.paragraph2Regular(context)
                .copyWith(color: HAppColor.darkSecondaryText),
          ),
        )
      ],
    );
  }

  Widget _buildListHourlyForecast(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        var viewModel = ref.watch(homeViewModelProvider);
        var listTemp = viewModel.getHourlyTemperaturesForToday();
        var listTime = viewModel.getHourlyTimesForToday();
        var listWeather = viewModel.getHourlyWeatherForToday();
        return SizedBox(
          height: 110,
          child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return HourlyForecastItemWidget(
                  iconData: WeatherUtil.getWeatherIcon(listWeather[index]),
                  temp: listTemp[index],
                  time: listTime[index],
                );
              },
              separatorBuilder: (context, index) => gapW16,
              itemCount: listTime.length),
        );
      },
    );
  }
}
