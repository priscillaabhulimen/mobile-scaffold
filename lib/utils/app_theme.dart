import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../navigation/app_state_manager.dart';

class AppTheme {
  AppTheme._();

  static final _appStateManager = AppStateManager();

  static ThemeData lightTheme (){
    return ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        highlightColor: const Color(0xFF202020),
        brightness: Brightness.light,
        scaffoldBackgroundColor: const Color(0xFFFEFEFE),
        backgroundColor: const Color(0xFFFEFEFE),
        primaryColor: const Color(0xFF16A6E9),
        primaryColorLight: const Color(0xFF3891CA),
        shadowColor: Colors.black54,
        appBarTheme: AppBarTheme(
            centerTitle: true,
            iconTheme: const IconThemeData(
              color: Color(0xFF202020),
            ),
            titleTextStyle: TextStyle(
              color: const Color(0xFF202020),
              fontSize: 16.5 * _appStateManager.textScale,
            ),
            titleSpacing: 1.5 * _appStateManager.textScale,
            backgroundColor: const Color(0xFFFEFEFE),
            elevation: 0
        ),
        textTheme: TextTheme(
            subtitle1: TextStyle(
              color: const Color(0xFF202020),
              fontWeight: FontWeight.bold,
              fontSize: 18 * _appStateManager.textScale,
            ),
            subtitle2: TextStyle(
              color: const Color(0xFF202020),
              fontWeight: FontWeight.bold,
              fontSize: 15 * _appStateManager.textScale,
            ),
            bodyText1: TextStyle(
              color: const Color(0xFF202020),
              fontSize: 12.5 * _appStateManager.textScale,
            ),
            bodyText2: TextStyle(
              color: const Color(0xFF202020),
              fontSize: 11 * _appStateManager.textScale,
            ),
            headline6: TextStyle(
              color: const Color(0xFF202020),
              fontWeight: FontWeight.bold,
              fontSize: 24 * _appStateManager.textScale,
            ),
            headline5: TextStyle(
              color: const Color(0xFF202020),
              fontWeight: FontWeight.w600,
              fontSize: 28 * _appStateManager.textScale,
            )
        )
    );
  }

  static ThemeData darkTheme (){
    return ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        highlightColor: const Color(0xFFFEFEFE),
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF202020),
        backgroundColor: const Color(0xFF202020),
        primaryColor: const Color(0xFF16A6E9),
        primaryColorLight: const Color(0xFF3891CA),
        shadowColor: Colors.black54,
        appBarTheme: AppBarTheme(
            centerTitle: true,
            iconTheme: const IconThemeData(
              color: Color(0xFFFEFEFE),
            ),
            titleTextStyle: TextStyle(
              color: const Color(0xFFFEFEFE),
              fontSize: 16.5 * _appStateManager.textScale,
            ),
            titleSpacing: 1.5 * _appStateManager.textScale,
            backgroundColor: const Color(0xFF202020),
            elevation: 0
        ),
        textTheme: TextTheme(
            subtitle1: TextStyle(
              color: const Color(0xFFFEFEFE),
              fontWeight: FontWeight.bold,
              fontSize: 18 * _appStateManager.textScale,
            ),
            subtitle2: TextStyle(
              color: const Color(0xFFFEFEFE),
              fontWeight: FontWeight.bold,
              fontSize: 15 * _appStateManager.textScale,
            ),
            bodyText1: TextStyle(
              color: const Color(0xFFFEFEFE),
              fontSize: 12.5 * _appStateManager.textScale,
            ),
            bodyText2: TextStyle(
              color: const Color(0xFFFEFEFE),
              fontSize: 11 * _appStateManager.textScale,
            ),
            headline6: TextStyle(
              color: const Color(0xFFFEFEFE),
              fontWeight: FontWeight.bold,
              fontSize: 24 * _appStateManager.textScale,
            ),
            headline5: TextStyle(
              color: const Color(0xFFFEFEFE),
              fontWeight: FontWeight.w600,
              fontSize: 28 * _appStateManager.textScale,
            )
        )
    );
  }
}