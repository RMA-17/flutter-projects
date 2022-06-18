import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int _numbers = 0;

  int get number => _numbers;
  set number(newValue) {
    _numbers = newValue;
    notifyListeners();
  }
}
