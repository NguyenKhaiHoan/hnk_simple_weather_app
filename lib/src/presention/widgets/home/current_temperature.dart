import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hnk_simple_weather_app/src/core/constants/constants.dart';
import 'package:hnk_simple_weather_app/src/core/utils/weather_util.dart';
import 'package:hnk_simple_weather_app/src/di/dependency_injection.dart';

class CurrentTemperatureWidget extends ConsumerWidget {
  const CurrentTemperatureWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeViewModel = ref.watch(homeViewModelProvider);
    final temperature = homeViewModel.getCurrentTemperatureHourly();
    final time = homeViewModel.getCurrentTimeHourly();
    final weatherIcon =
        WeatherUtil.getWeatherIcon(homeViewModel.getCurrentWeatherHourly());
    final weatherDescription = WeatherUtil.getWeatherDescription(
        homeViewModel.getCurrentWeatherHourly(), context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              temperature,
              style: HAppStyle.heading1(context).copyWith(
                color: HAppColor.darkPrimaryText,
                height: 1.0,
              ),
            ),
            Text(time,
                style: HAppStyle.paragraph1Regular(context)
                    .copyWith(color: HAppColor.darkSecondaryText))
          ],
        ),
        gapW24,
        Expanded(
            child: Row(
          children: [
            Icon(
              weatherIcon,
              color: HAppColor.darkIcon,
            ),
            gapW8,
            Expanded(
                child: Text(
              weatherDescription,
              maxLines: 2,
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              style: HAppStyle.label2Regular(context)
                  .copyWith(color: HAppColor.darkPrimaryText),
            ))
          ],
        ))
      ],
    );
  }
}
