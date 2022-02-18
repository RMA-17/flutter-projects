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
