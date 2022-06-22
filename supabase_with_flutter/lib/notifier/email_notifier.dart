import 'package:flutter/cupertino.dart';

class EmailNotifier extends ChangeNotifier {
  String? _email = null;

  String? get email => _email;
  set email(newMail) {
    _email = newMail;
  }
}
