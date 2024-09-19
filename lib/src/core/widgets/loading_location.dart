import 'package:flutter/material.dart';
import 'package:hnk_simple_weather_app/src/core/constants/constants.dart';
import 'package:lottie/lottie.dart';

class AnimationLottieWidget extends StatelessWidget {
  const AnimationLottieWidget(
      {super.key,
      required this.backgroundColor,
      required this.pathLottie,
      required this.description});

  final Color backgroundColor;
  final String pathLottie;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Lottie.asset(
                  pathLottie,
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                gapH8,
                Text(
                  description,
                  style: HAppStyle.paragraph2Regular(context),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
