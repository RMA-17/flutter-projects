import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:supabase/supabase.dart';
import 'package:supabase_with_flutter/credentials/supabase_credentials.dart';

class AuthenticationService {
  Future<bool> signUp({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    GotrueSessionResponse response =
        await SupabaseCredentials.supabaseClient.auth.signUp(email, password);

    //prints if response is error
    if (response.error == null) {
      String? userEmail = response.data!.user!.email;
      print("Sign Up Success: $userEmail");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            "Sign Up Success: $userEmail",
          ),
          action: SnackBarAction(
            label: "Ok",
            onPressed: () {},
          ),
        ),
      );
      return true;
    } else {
      print("Sign up error \n ${response.error!.message}");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Sign up error\n${response.error!.message}"),
          action: SnackBarAction(
            label: "Ok",
            onPressed: () {},
          ),
        ),
      );
      return false;
    }
  }

  Future<bool> signIn({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    GotrueSessionResponse response =
        await SupabaseCredentials.supabaseClient.auth.signIn(
      email: email,
      password: password,
      options: AuthOptions(redirectTo: SupabaseCredentials.APIURL),
    );

    //prints if response is error
    if (response.error == null) {
      String? userEmail = response.data!.user!.email;
      print("Sign In Success: $userEmail");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            "Sign Up Success: $userEmail",
          ),
          action: SnackBarAction(label: "Ok", onPressed: () {}),
        ),
      );
      return true;
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Sign up error\n${response.error!.message}"),
          action: SnackBarAction(label: "Ok", onPressed: () {}),
        ),
      );
      return false;
    }
  }
}
