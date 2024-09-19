// import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:hnk_simple_weather_app/src/core/constants/constants.dart';
// import 'package:hnk_simple_weather_app/src/core/enums/app_theme.dart';
// import 'package:hnk_simple_weather_app/src/core/extensions/build_context.dart';
// import 'package:hnk_simple_weather_app/src/di/dependency_injection.dart';
// import 'package:hnk_simple_weather_app/src/presention/widgets/drawer/drawer_header.dart';
// import 'package:hnk_simple_weather_app/src/presention/widgets/drawer/drawer_list_tile.dart';
// import 'package:phosphor_flutter/phosphor_flutter.dart';

// class DrawerView extends ConsumerWidget {
//   const DrawerView({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     Map<IconData, String> mapSectionDrawer = {
//       PhosphorIconsFill.house: AppLocalizations.of(context)!.home,
//       PhosphorIconsFill.info: AppLocalizations.of(context)!.aboutApp,
//       PhosphorIconsFill.star: AppLocalizations.of(context)!.rate,
//       PhosphorIconsFill.dotsThreeCircle:
//           AppLocalizations.of(context)!.otherApps,
//       PhosphorIconsFill.translate: AppLocalizations.of(context)!.language,
//     };
//     var viewModel = ref.watch(drawerViewModelProvider);
//     return SafeArea(
//       child: AnimatedContainer(
//         curve: Curves.easeInOutCubic,
//         duration: const Duration(milliseconds: 500),
//         width: viewModel.isCollapse ? 300 : 70,
//         margin: const EdgeInsets.all(10),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15),
//           color: context.isDarkMode
//               ? HAppColor.darkOtherBackground
//               : HAppColor.lightBackground,
//         ),
//         child: Padding(
//           padding: hAppDefaultPaddingLTRB,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               DrawerHeaders(isCollapse: viewModel.isCollapse),
//               gapH8,
//               const Divider(color: Colors.grey),
//               gapH8,
//               ListView.separated(
//                 shrinkWrap: true,
//                 itemBuilder: (context, index) {
//                   var drawerIconItem = mapSectionDrawer.keys.elementAt(index);
//                   var drawLabelItem = mapSectionDrawer.values.elementAt(index);

//                   if (index == mapSectionDrawer.length - 1) {
//                     return Consumer(
//                       builder: (context, ref, child) {
//                         var viewModel = ref.watch(drawerViewModelProvider);
//                         return InkWell(
//                           onTap: () =>
//                               ref.read(drawerViewModelProvider).localeChanged(),
//                           child: DrawerListTile(
//                             isCollapse: viewModel.isCollapse,
//                             iconData: drawerIconItem,
//                             title:
//                                 '$drawLabelItem: ${viewModel.locale.languageCode == 'en' ? "English" : "Tiếng Việt"}',
//                             index: index,
//                           ),
//                         );
//                       },
//                     );
//                   }
//                   return DrawerListTile(
//                     isCollapse: viewModel.isCollapse,
//                     iconData: drawerIconItem,
//                     title: drawLabelItem,
//                     index: index,
//                   );
//                 },
//                 separatorBuilder: (context, index) => gapH10,
//                 itemCount: mapSectionDrawer.length,
//               ),
//               gapH8,
//               const Divider(color: Colors.grey),
//               const Spacer(),
//               Consumer(builder: (context, ref, _) {
//                 var state = ref.watch(drawerViewModelProvider);
//                 var drawerIconItem = state.theme == Themes.dark
//                     ? PhosphorIconsFill.moon
//                     : PhosphorIconsFill.sun;
//                 var drawLabelItem = AppLocalizations.of(context)!.darkMode;
//                 return DrawerListTile(
//                   isCollapse: viewModel.isCollapse,
//                   iconData: drawerIconItem,
//                   title: drawLabelItem,
//                   index: 5,
//                   widget: Switch(
//                     activeColor: context.isDarkMode
//                         ? HAppColor.darkOtherBackground
//                         : HAppColor.lightBackground,
//                     activeTrackColor: HAppColor.gradientStart,
//                     inactiveThumbColor: context.isDarkMode
//                         ? HAppColor.darkOtherBackground
//                         : HAppColor.lightBackground,
//                     inactiveTrackColor: HAppColor.gradientStart,
//                     splashRadius: 50.0,
//                     value: state.theme == Themes.dark,
//                     onChanged: (value) => viewModel.toggleTheme(),
//                   ),
//                 );
//               }),
//               gapH10,
//               Align(
//                 alignment: viewModel.isCollapse
//                     ? Alignment.bottomRight
//                     : Alignment.bottomCenter,
//                 child: IconButton(
//                   splashColor: Colors.transparent,
//                   icon: Icon(
//                     viewModel.isCollapse
//                         ? Icons.arrow_back_ios
//                         : Icons.arrow_forward_ios,
//                     color: context.isDarkMode
//                         ? HAppColor.darkIcon
//                         : HAppColor.lightIcon,
//                     size: 16,
//                   ),
//                   onPressed: viewModel.toggleCollapse,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hnk_simple_weather_app/src/core/constants/constants.dart';
import 'package:hnk_simple_weather_app/src/di/dependency_injection.dart';
import 'package:hnk_simple_weather_app/src/presention/widgets/drawer/collapse_button.dart';
import 'package:hnk_simple_weather_app/src/presention/widgets/drawer/drawer_container.dart';
import 'package:hnk_simple_weather_app/src/presention/widgets/drawer/drawer_header.dart';
import 'package:hnk_simple_weather_app/src/presention/widgets/drawer/drawer_items.dart';
import 'package:hnk_simple_weather_app/src/presention/widgets/drawer/theme_switcher.dart';

class DrawerView extends ConsumerWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var viewModel = ref.watch(drawerViewModelProvider);
    return SafeArea(
      child: DrawerContainer(
        isCollapse: viewModel.isCollapse,
        children: [
          DrawerHeaders(isCollapse: viewModel.isCollapse),
          gapH8,
          const Divider(color: Colors.grey),
          gapH8,
          const DrawerItems(),
          gapH8,
          const Divider(color: Colors.grey),
          const Spacer(),
          const ThemeSwitcher(),
          gapH10,
          const CollapseButton(),
        ],
      ),
    );
  }
}
