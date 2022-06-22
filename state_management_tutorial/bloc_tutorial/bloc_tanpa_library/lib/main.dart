import 'package:flutter/material.dart';

import 'bloc/color_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //Inisiasi ColorBloc
  ColorBloc colorBloc = ColorBloc();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bloc Tanpa Library'),
        ),
        body: Center(
          //Buat Stream builder, fungsingya agar dia mengupdate widget setiap
          //kali ia mendapatkan update dari stream
          child: StreamBuilder<Color>(
            stream: colorBloc.stateStream,
            initialData: Colors.amber,
            builder: (context, snapshot) {
              return AnimatedContainer(
                duration: const Duration(
                  milliseconds: 500,
                ),
                width: 200,
                height: 200,
                //namanya snapshot.data karena kita akan mengambil data yang update
                //dari stream.
                color: snapshot.data,
              );
            },
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                colorBloc.eventSink.add(ColorEvent.toAmber);
              },
              backgroundColor: Colors.amber,
            ),
            const SizedBox(width: 5),
            FloatingActionButton(
              onPressed: () {
                colorBloc.eventSink.add(ColorEvent.toLightBlue);
              },
              backgroundColor: Colors.lightBlue,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    colorBloc.dispose();
  }
}
