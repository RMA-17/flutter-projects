import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supabase_with_flutter/notifier/authentication_notifier.dart';
import 'package:supabase_with_flutter/routes/app_routes.dart';
import 'package:supabase_with_flutter/views/main_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
    AuthenticationNotifier authenticationNotifier =
        Provider.of<AuthenticationNotifier>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Login View with Supabase"),
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
                var response = await authenticationNotifier.signIn(
                  context: context,
                  email: email,
                  password: password,
                );
                if (response!) {
                  if (!mounted) return;
                  Navigator.pushReplacementNamed(
                    context,
                    AppRoutes.mainViewRoute,
                  );
                }
              }
            },
            child: const Text("Sign In"),
          ),
          const SizedBox(height: 40),
          TextButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, AppRoutes.signUpRoute);
            },
            child: const Text("Got no account? Sign Up"),
          ),
        ],
      ),
    );
  }
}
