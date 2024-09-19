import 'package:flutter/material.dart';
import 'package:hnk_simple_weather_app/src/core/constants/constants.dart';
import 'package:hnk_simple_weather_app/src/presention/widgets/home/current_temperature.dart';
import 'package:hnk_simple_weather_app/src/presention/widgets/home/header.dart';
import 'package:hnk_simple_weather_app/src/presention/widgets/home/hourly_forecast.dart';

class WeatherOverviewWidget extends StatelessWidget {
  const WeatherOverviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(hAppDefaultPadding * 1.5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(colors: [
            HAppColor.gradientStart,
            HAppColor.gradientMid,
            HAppColor.gradientEnd,
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeaderWidget(),
          CurrentTemperatureWidget(),
          gapH10,
          HourlyForecastWidget(),
        ],
      ),
    );
  }
}
