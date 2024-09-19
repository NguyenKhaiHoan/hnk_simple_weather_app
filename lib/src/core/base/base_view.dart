import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hnk_simple_weather_app/gen/assets.gen.dart';
import 'package:hnk_simple_weather_app/src/core/base/base_viewmodel.dart';
import 'package:hnk_simple_weather_app/src/core/network/exception_handler.dart';
import 'package:hnk_simple_weather_app/src/core/widgets/loading_location.dart';

abstract class BaseView<VM extends BaseViewModel>
    extends ConsumerStatefulWidget {
  const BaseView({super.key});

  @override
  BaseViewState createState() => BaseViewState();

  void openDrawer(BuildContext context) => Scaffold.of(context).openDrawer();

  PreferredSizeWidget? appBar(BuildContext context) => null;

  bool safeArea() => true;

  bool hasConstraints() => true;

  bool resizeToAvoidBottomInset() => true;

  Widget body(BuildContext context, WidgetRef ref);

  ChangeNotifierProvider<VM> get viewModelProvider;

  String errorLottiePath() => Assets.animations.error;

  Widget errorWidget(BuildContext context, ExceptionHandler error) =>
      AnimationLottieWidget(
        backgroundColor: pageBackgroundColor(context),
        pathLottie: errorLottiePath(),
        description: ExceptionHandler.getErrorMessage(error),
      );

  String noInternetLottiePath() => Assets.animations.noInternet;

  Widget noInternet(BuildContext context) => AnimationLottieWidget(
        backgroundColor: pageBackgroundColor(context),
        pathLottie: noInternetLottiePath(),
        description: AppLocalizations.of(context)!.noInternetConnection,
      );

  Widget annotatedRegion(BuildContext context, WidgetRef ref) =>
      AnnotatedRegion(
        value: SystemUiOverlayStyle(
          statusBarColor: statusBarColor(),
        ),
        child: pageContent(context, ref),
      );

  Widget pageContent(BuildContext context, WidgetRef ref) => safeArea()
      ? SafeArea(
          child: pageScaffold(
              context, ref, maxHeight(context, ref), maxWidth(context, ref)))
      : pageScaffold(
          context, ref, maxHeight(context, ref), maxWidth(context, ref));

  double maxHeight(BuildContext context, WidgetRef ref) =>
      MediaQuery.of(context).size.height;
  double maxWidth(BuildContext context, WidgetRef ref) =>
      MediaQuery.of(context).size.width;

  Widget pageScaffold(BuildContext context, WidgetRef ref, double maxHeight,
          double maxWidth) =>
      hasConstraints()
          ? Container(
              constraints: BoxConstraints(
                maxHeight: maxHeight,
                maxWidth: maxWidth,
              ),
              child: buildScaffold(context, ref),
            )
          : buildScaffold(context, ref);

  Widget buildScaffold(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: pageBackgroundColor(context),
      appBar: appBar(context),
      floatingActionButton: floatingActionButton(context),
      floatingActionButtonLocation: floatingActionButtonLocation(),
      body: Builder(
        builder: (context) => body(context, ref),
      ),
      bottomNavigationBar: bottomNavigationBar(context),
      drawer: drawer(),
      resizeToAvoidBottomInset: resizeToAvoidBottomInset(),
    );
  }

  Color pageBackgroundColor(BuildContext context) => Colors.white;

  Color statusBarColor() => Colors.transparent;

  Widget? floatingActionButton(BuildContext context) => null;

  Widget? bottomNavigationBar(BuildContext context) => null;

  Widget? drawer() => null;

  Widget _showLoading(Widget? loading) => Center(
        child: loading ?? const CircularProgressIndicator(),
      );

  Widget? customLoading(BuildContext context) => null;

  Future<void>? initStateView(WidgetRef ref) => null;

  FloatingActionButtonLocation? floatingActionButtonLocation() =>
      FloatingActionButtonLocation.endFloat;
}

class BaseViewState extends ConsumerState<BaseView> {
  @override
  void initState() {
    widget.initStateView(ref);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = ref.watch(widget.viewModelProvider);

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: viewModel.pageState.when(
        idle: () => widget.annotatedRegion(context, ref),
        loading: () => widget._showLoading(widget.customLoading(context)),
        lostConnection: () => widget.noInternet(context),
        error: (error) => widget.errorWidget(context, error),
      ),
    );
  }
}
