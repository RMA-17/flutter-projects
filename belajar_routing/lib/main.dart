import 'package:flutter/material.dart';
import 'package:belajar_routing/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //Route init
      initialRoute: '',
      routes: {
        //Route naming
        '/': ((context) => const FirstPage()),
        '/second-page': ((context) => const SecondPage())
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Belajar Routing"),
      ),
      body: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("First Page", style: TextStyle(fontSize: 36)),
            const SizedBox(height: 15),
            ElevatedButton(
              child: const Text(
                "Pindah Ke Layout selanjutnya",
                style: TextStyle(fontSize: 14),
              ),
              onPressed: () {
                //Transfer to other route
                Navigator.pushNamed(context, '/second-page');
              },
            )
          ],
        )
      ]),
    );
  }
}



// Kalau mau navigasi:

// pushNamed('/nama_route') = pindah saja, bisa di back nantinya
// pushReplacementNamed('/nama_route') = Pindah lalu finish();
// pop('/bisa_nama_route' RouteClass()) = Menghilangkan atau navigateUp()

//Untuk yang pakek Object Route:
// push(context, MaterialPageRoute (builder, (context) {
// return PageTujuan()
// }))




