import 'package:flutter/cupertino.dart';

class Cart with ChangeNotifier {
  int _quantity = 0;

  int get quantitiy => _quantity;
  set quantitiy(value) {
    _quantity = value;
    notifyListeners();
  }
}
