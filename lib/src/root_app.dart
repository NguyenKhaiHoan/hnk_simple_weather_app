import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hnk_simple_weather_app/src/core/enums/app_theme.dart';
import 'package:hnk_simple_weather_app/src/di/dependency_injection.dart';

import 'core/config/config.dart';
import 'core/routes/routes.dart';

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, ch) => DismissKeyboard(
        child: Consumer(
          builder: (context, ref, child) {
            var viewModel = ref.watch(drawerViewModelProvider);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                brightness: viewModel.theme == Themes.dark
                    ? Brightness.dark
                    : Brightness.light,
              ),
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              locale: viewModel.locale.languageCode == 'en'
                  ? const Locale('en')
                  : const Locale('vi'),
              initialRoute: RoutesName.initial,
              onGenerateRoute: AppRoute.generate,
            );
          },
        ),
      ),
    );
  }
}
