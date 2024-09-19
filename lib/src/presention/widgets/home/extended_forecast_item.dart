import 'package:flutter/material.dart';
import 'package:hnk_simple_weather_app/src/core/constants/constants.dart';
import 'package:hnk_simple_weather_app/src/core/extensions/build_context.dart';

class ExtenedForecastItemWidget extends StatelessWidget {
  const ExtenedForecastItemWidget({
    super.key,
    required this.temp,
    required this.time,
    required this.iconData,
    required this.weather,
  });

  final String temp;
  final String time;
  final IconData iconData;
  final String weather;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: hAppDefaultPaddingR,
          child: Icon(iconData, color: Colors.grey, size: 30),
        ),
        Expanded(
            child: Container(
          padding: hAppDefaultPaddingLR,
          decoration: BoxDecoration(
              color: context.isDarkMode
                  ? HAppColor.darkOtherBackground
                  : HAppColor.white,
              borderRadius: BorderRadius.circular(15)),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              time,
              style: HAppStyle.heading3(context),
            ),
            subtitle: Text(
              weather,
              style: HAppStyle.paragraph2Regular(context),
            ),
            trailing: Text(
              temp,
              style: HAppStyle.heading2(context).copyWith(
                height: 1.0,
              ),
            ),
          ),
        ))
      ],
    );
  }
}
