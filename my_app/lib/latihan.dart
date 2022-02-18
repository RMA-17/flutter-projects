import 'package:flutter/material.dart';

class LatihanRowAndColumn extends StatelessWidget {
  const LatihanRowAndColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Latihan Row and Column")),
        body: SafeArea(
            child: Center(
          child: Column(
            children: [
              Row(
                children: const [
                  Text("Text 1"),
                  Text("Text 2"),
                  Text("Text 3")
                ],
              ),
              Column(
                children: const [
                  Text("Text 1"),
                  Text("Text 2"),
                  Text("Text 3")
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}

class HelloWorld extends StatelessWidget {
  const HelloWorld({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Material App = sebuah widget yang diperlukan oleh
    //aplikasi yang dibuat dengan material design
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: Tampilan awal yang akan digunakan
      //oleh widget material app itu sendiri.
      home: Scaffold(
        //Scaffold adalah tampilan dasar dari sebuah aplikasi
        appBar: AppBar(
          title: const Text("Aplikasi Hello World"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            color: Colors.lightBlue,
            width: 150,
            height: 100,
            child: Text(
              //style: mengatur gaya
              //overflow: handling pada overflow
              //softwrap: tidak akan ter enter ketika penuh
              "Hello World",
              style: TextStyle(
                  //fontweight = ketebalan font
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}

class BelajarContainer extends StatelessWidget {
  const BelajarContainer({Key? key}) : super(key: key);

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

          /// Container juga punya decoration

          decoration: BoxDecoration(
              color: Colors.red,
              //Memberikan radius:
              borderRadius: BorderRadius.circular(16),
              //Warna nya akan sama saja, beda jika kita memakai Gradient
              gradient: const LinearGradient(
                colors: [Colors.amber, Colors.blue],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )),
          margin: const EdgeInsets.all(25.0),
          padding: const EdgeInsets.all(16),
          // color: Colors.red,
          //Kalau sudah pakai BoxDecoration, g ush dikasih color di Container nya
          child: Container(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
