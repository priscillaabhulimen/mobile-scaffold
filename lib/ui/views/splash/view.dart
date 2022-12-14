import 'package:flutter/material.dart';
import 'package:mobile_app_scaffold/core/navigation/pages.dart';
import 'package:mobile_app_scaffold/ui/base/base_view.dart';
import 'package:mobile_app_scaffold/ui/views/splash/view_model.dart';

class SplashView extends StatefulWidget {
  static MaterialPage page() {
    return MaterialPage(
        name: AppPages.splashPath,
        key: ValueKey(AppPages.splashPath),
        child: const SplashView());
  }

  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<SplashViewModel>(
      model: SplashViewModel(),
      onModelReady: (model) => model.init(),
      onDispose: (model) => model.dispose(),
      builder: (context, model, _) {
        return Scaffold();
      },
    );
  }
}
