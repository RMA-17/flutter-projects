import 'package:flutter/material.dart';
import 'package:my_app/pages/home_page.dart';

//Fungsi main adalah fungsi yang akan dijalankan ketika pertamakali mulai
// project
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
