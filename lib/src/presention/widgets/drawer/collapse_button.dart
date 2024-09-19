import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hnk_simple_weather_app/src/core/constants/constants.dart';
import 'package:hnk_simple_weather_app/src/core/extensions/build_context.dart';
import 'package:hnk_simple_weather_app/src/di/dependency_injection.dart';

class CollapseButton extends ConsumerWidget {
  const CollapseButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var viewModel = ref.watch(drawerViewModelProvider);
    return Align(
      alignment:
          viewModel.isCollapse ? Alignment.bottomRight : Alignment.bottomCenter,
      child: IconButton(
        splashColor: Colors.transparent,
        icon: Icon(
          viewModel.isCollapse ? Icons.arrow_back_ios : Icons.arrow_forward_ios,
          color: context.isDarkMode ? HAppColor.darkIcon : HAppColor.lightIcon,
          size: 16,
        ),
        onPressed: () =>
            ref.read(drawerViewModelProvider.notifier).toggleCollapse(),
      ),
    );
  }
}
