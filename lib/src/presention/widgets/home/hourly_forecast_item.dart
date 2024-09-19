import 'package:flutter/widgets.dart';
import 'package:hnk_simple_weather_app/src/core/constants/constants.dart';

class HourlyForecastItemWidget extends StatelessWidget {
  const HourlyForecastItemWidget(
      {super.key,
      required this.time,
      required this.temp,
      required this.iconData});

  final String time;
  final String temp;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: hAppDefaultPaddingLTRB,
          decoration: BoxDecoration(
              border: Border.all(color: HAppColor.darkIcon),
              shape: BoxShape.circle),
          child: Icon(
            iconData,
            color: HAppColor.darkIcon,
          ),
        ),
        gapH8,
        Text(
          time,
          style: HAppStyle.paragraph2Regular(context)
              .copyWith(color: HAppColor.darkSecondaryText),
        ),
        Text(
          temp,
          style: HAppStyle.heading4(context)
              .copyWith(color: HAppColor.darkPrimaryText),
        )
      ],
    );
  }
}
