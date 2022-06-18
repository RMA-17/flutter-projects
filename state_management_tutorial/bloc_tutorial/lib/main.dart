import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _counter = 0;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bloc Example App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.amber,
              onPressed: () {
                _counter++;
              },
            ),
            const SizedBox(width: 5),
            FloatingActionButton(
              backgroundColor: Colors.blue,
              onPressed: () {
                _counter--;
              },
            ),
          ],
        ),
      ),
    );
  }
}
