import 'package:flutter/material.dart';
import 'package:mobile_app_scaffold/utils/app_theme.dart';
import 'package:oktoast/oktoast.dart';
import 'package:provider/provider.dart';
import 'core/providers/setup.dart';
import 'core/services/locator.dart';
import 'core/services/navigation_service.dart';
import 'core/navigation/app_router.dart';
import 'core/navigation/app_state_manager.dart';

class MobileScaffoldApp extends StatefulWidget {
  final bool isDebug;
  const MobileScaffoldApp({Key? key, this.isDebug = true}) : super(key: key);

  @override
  State<MobileScaffoldApp> createState() => _MobileScaffoldAppState();
}

class _MobileScaffoldAppState extends State<MobileScaffoldApp> {
  final _appStateManager = AppStateManager();

  late AppRouter _appRouter;

  @override
  void initState() {
    super.initState();
    _appRouter = AppRouter(
      appStateManager: _appStateManager,
    );
  }

  final GlobalKey<NavigatorState> _navigatorKey = locator<NavigationService>().navigatorKey;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => _appStateManager,
        ),
        ...providers,
      ],
      child: OKToast(
        child: MaterialApp(
          navigatorKey: _navigatorKey,
          debugShowCheckedModeBanner: widget.isDebug,
          darkTheme: AppTheme.darkTheme(),
          theme: AppTheme.lightTheme(),
          home: Router(
            routerDelegate: _appRouter,
            backButtonDispatcher: RootBackButtonDispatcher(),
          ),
        ),
      ),
    );
  }
}
