import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_provider/provider/counter_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context) => Counter(),
        child: Consumer<Counter>(
          builder: (context, counter, _) => Scaffold(
            appBar: AppBar(
              title: const Text('Provider example app'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Teks ini akan menjadi merah jika angka nya genap",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color:
                          (counter.number % 2 == 0) ? Colors.red : Colors.black,
                    ),
                  ),
                  Text(
                    counter.number.toString(),
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    counter.number++;
                  },
                  child: const Icon(Icons.add),
                ),
                const SizedBox(
                  width: 5,
                ),
                FloatingActionButton(
                  onPressed: () {
                    if (counter.number > 0) {
                      counter.number--;
                    }
                  },
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
