import 'package:flutter/material.dart';
import 'package:hsi_app/pages/login_page.dart';
import 'package:hsi_app/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "HSI App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/login': (context) => const LoginPage(),
        '/main_page': (context) => const MainPage()
      },
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}
