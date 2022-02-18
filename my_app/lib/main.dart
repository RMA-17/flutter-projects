import 'package:flutter/material.dart';

//Fungsi main adalah fungsi yang akan dijalankan ketika pertamakali mulai
// project
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container"),
        ),
        body: Container(
          //margin: jarak antara container dengan widget lainnya
          //(yang diluar container)

          //padding: jarak dari sisi container ke widget yang ada didalam container
          // widget pengisi: EdgeInsets
          ///EdgeInsets.all() untuk margin semua sisi
          ///EdgeInsets.fromLTRB() untuk margin, isi dari kiri, atas, kanan, bawah'
          ///EdgeInsets.only() isi dengan left, right, top, atau bottom. seperti martgin_bottom, dst. di Android native
          margin: const EdgeInsets.all(16.0),
          padding: const EdgeInsets.all(16),
          color: Colors.red,
          child: Container(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
