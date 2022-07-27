import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:mobile_app_scaffold/root_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences prefs;
Future<void> main() async{

  WidgetsFlutterBinding.ensureInitialized();

  runZonedGuarded(() async {

    prefs = await SharedPreferences.getInstance();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    runApp(const MobileScaffoldApp(isDebug: false));
  }, (exception, stackTrace) async {
    // await Sentry.captureException(exception, stackTrace: stackTrace);
  });

}