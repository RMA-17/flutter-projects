import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supabase_with_flutter/notifier/authentication_notifier.dart';
import 'package:supabase_with_flutter/routes/app_routes.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    //Inisialisasikan saat dibuat
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final AuthenticationNotifier authenticationNotifier =
        Provider.of<AuthenticationNotifier>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up View with Supabase"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: const InputDecoration(
                hintText: "Enter your email",
              ),
              controller: emailController,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: const InputDecoration(
                hintText: "Enter your password",
              ),
              controller: passwordController,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () async {
              String email = emailController.text;
              String password = passwordController.text;

              if (email.isEmpty && password.isEmpty) {
                var snackbar = SnackBar(
                  content: const Text(
                    "Email atau password belum diisi",
                  ),
                  action: SnackBarAction(label: "Ok", onPressed: () {}),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              } else {
                await authenticationNotifier.signUp(
                  context: context,
                  email: email,
                  password: password,
                );
              }
            },
            child: const Text("Sign Up"),
          ),
          const SizedBox(height: 40),
          TextButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, AppRoutes.loginRoute);
            },
            child: const Text("Already have account? Sign In"),
          ),
        ],
      ),
    );
  }
}
