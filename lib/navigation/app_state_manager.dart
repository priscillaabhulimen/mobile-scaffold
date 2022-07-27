import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AppStateManager extends ChangeNotifier{
  bool _initialised = false;

  bool get isInitialised => _initialised;

  void initializeApp() {
    _initialised = true;
    notifyListeners();
  }
  
  void closeApp() {
    _initialised = false;
  
    SystemNavigator.pop();
    notifyListeners();
  }
}