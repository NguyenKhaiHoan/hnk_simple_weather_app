import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hnk_simple_weather_app/src/core/constants/constants.dart';
import 'package:hnk_simple_weather_app/src/core/extensions/build_context.dart';
import 'package:hnk_simple_weather_app/src/di/dependency_injection.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class AnimatedSearchTextField extends ConsumerWidget {
  const AnimatedSearchTextField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var drawerViewModel = ref.watch(drawerViewModelProvider);
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      width: drawerViewModel.isOpen ? double.infinity : 30,
      child: Row(
        children: [
          if (drawerViewModel.isOpen)
            Expanded(
              child: TextField(
                onSubmitted: (value) {
                  ref.read(homeViewModelProvider).searchWeatherLocation(value);
                },
                decoration: InputDecoration(
                  hintText: 'Enter city, country ...',
                  hintStyle: HAppStyle.label2Regular(context),
                  border: InputBorder.none,
                ),
              ),
            ),
          IconButton(
            onPressed: () {
              ref.read(drawerViewModelProvider).toggleOpen();
            },
            icon: Icon(
              drawerViewModel.isOpen
                  ? PhosphorIconsBold.x
                  : PhosphorIconsBold.magnifyingGlass,
              color:
                  context.isDarkMode ? HAppColor.darkIcon : HAppColor.lightIcon,
            ),
          ),
        ],
      ),
    );
  }
}
