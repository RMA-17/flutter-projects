import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supabase_with_flutter/notifier/email_notifier.dart';
import 'package:supabase_with_flutter/service/authentication_service.dart';

class AuthenticationNotifier extends ChangeNotifier {
  final AuthenticationService _authenticationService = AuthenticationService();

  Future<String?> signUp({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    final EmailNotifier emailNotifier =
        Provider.of<EmailNotifier>(context, listen: false);

    try {
      var response = await _authenticationService.signUp(
        context: context,
        email: email,
        password: password,
      );
      if (response) {
        emailNotifier.email = email;
      } else {
        emailNotifier.email = "Error";
      }
    } catch (e) {
      print(e);
    }
  }

  Future<bool?> signIn({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    final EmailNotifier emailNotifier =
        Provider.of<EmailNotifier>(context, listen: false);

    bool isSuccessfull;

    try {
      var response = await _authenticationService.signIn(
        context: context,
        email: email,
        password: password,
      );
      if (response) {
        emailNotifier.email = email;
        isSuccessfull = true;
      } else {
        emailNotifier.email = "Error";
        isSuccessfull = false;
      }
    } catch (e) {
      print(e);
      isSuccessfull = false;
    }
    return isSuccessfull;
  }
}
