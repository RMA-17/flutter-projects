import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Chatty",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Chatty"),
        ),
        body: Column(
          children: [],
        ),
      ),
    );
  }
}
