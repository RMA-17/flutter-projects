import 'package:supabase_with_flutter/views/login_view.dart';
import 'package:supabase_with_flutter/views/main_view.dart';
import 'package:supabase_with_flutter/views/signup_view.dart';

class AppRoutes {
  static const String loginRoute = "/login";
  static const String signUpRoute = "/sign-up";
  static const String mainViewRoute = "/main-page";
  static final routes = {
    loginRoute: (context) => const LoginView(),
    signUpRoute: (context) => const SignUpView(),
    mainViewRoute: (context) => const MainPage()
  };
}
