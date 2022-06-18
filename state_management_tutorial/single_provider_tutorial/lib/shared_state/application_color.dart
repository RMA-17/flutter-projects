import 'package:flutter/material.dart';

class ApplicationColor with ChangeNotifier {
  bool _isLightBlue = true;

  bool get isLigthBlue => _isLightBlue;
  set isLightBlue(bool newValue) {
    _isLightBlue = newValue;
    notifyListeners();
  }

  Color get color => _isLightBlue ? Colors.blue : Colors.amber;
}
