import 'package:flutter/material.dart';

///Class stateless
///
///Apa itu Stateless?
///Stateless widget adalah widget yang tidak memiliki keadaan.
///state = keadaan
/// Jika widget adalah sesuatu, maka contoh sesuatu itu adalah air,
/// air memiliki 3 keadaan, cair dan beku, dan gas. Seperti itu pula bagaimana state bekerja.
/// Jadi stateless widget adalah widget yang tidak akan pernah berubah, seperti batu. Tetap menjadi benda padat
class Stateless extends StatelessWidget {
  const Stateless({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

///Class Stateful
///Sedangkan stateful adalah class yang memiliki keadaan, stateful ini bagaikan air.
///Ia bisa berubah ubah, karena ada state nya.
class StateFul extends StatefulWidget {
  const StateFul({Key? key}) : super(key: key);

  @override
  _StateFulState createState() => _StateFulState();
}

class _StateFulState extends State<StateFul> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

//Stateful widget ini punya 2 class
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

//class kedua, beda class sama yg diatas
class _MyAppState extends State<MyApp> {
  //Kalau mau bikin kodingan, bikin diatas sini

  int number = 0;

  void tekanTombol() {
    //Untuk merefresh tampiulan, gunakan setState.
    //karena jik megubah value saja tanpa mengubah tampilan, maka tampilan tersebut tidak akan ter update
    setState(() {
      number++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Stateful Widget"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                number.toString(),
                style: TextStyle(fontSize: number.toDouble()),
              ),
              RaisedButton(
                onPressed: () {
                  tekanTombol();
                },
                child: const Text("Tambah Bilangan"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
