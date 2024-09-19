/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

class $AssetsAnimationsGen {
  const $AssetsAnimationsGen();

  /// File path: assets/animations/error.json
  String get error => 'assets/animations/error.json';

  /// File path: assets/animations/loading_location.json
  String get loadingLocation => 'assets/animations/loading_location.json';

  /// File path: assets/animations/no_internet.json
  String get noInternet => 'assets/animations/no_internet.json';

  /// List of all assets
  List<String> get values => [error, loadingLocation, noInternet];
}

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// Directory path: assets/fonts/sf
  $AssetsFontsSfGen get sf => const $AssetsFontsSfGen();
}

class $AssetsFontsSfGen {
  const $AssetsFontsSfGen();

  /// File path: assets/fonts/sf/SF-Pro-Display-Medium.otf
  String get sFProDisplayMedium => 'assets/fonts/sf/SF-Pro-Display-Medium.otf';

  /// File path: assets/fonts/sf/SF-Pro-Display-Regular.otf
  String get sFProDisplayRegular =>
      'assets/fonts/sf/SF-Pro-Display-Regular.otf';

  /// File path: assets/fonts/sf/SF-Pro-Display-Semibold.otf
  String get sFProDisplaySemibold =>
      'assets/fonts/sf/SF-Pro-Display-Semibold.otf';

  /// List of all assets
  List<String> get values =>
      [sFProDisplayMedium, sFProDisplayRegular, sFProDisplaySemibold];
}

class Assets {
  Assets._();

  static const $AssetsAnimationsGen animations = $AssetsAnimationsGen();
  static const $AssetsFontsGen fonts = $AssetsFontsGen();
}
