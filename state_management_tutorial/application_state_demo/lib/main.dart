import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

//Dengan WidgetBindingObserver ini kita menyatakan bahwa class ini adalah class
//yang dapat meng-observe dari WidgetsBinding ini.
class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Application State Demo"),
        ),
        body: Container(),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    //Jadi kita remove observer nya kalau sudah selesai.
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    //Setiap ada perubahan dari lifecycle state maka kita akan diberitahu.
    super.didChangeAppLifecycleState(state);

    if (state == AppLifecycleState.inactive) {
      //inactive ini akan memberitahu saat aplikasi kita belum aktif
    }

    if (state == AppLifecycleState.paused) {
      //Pause ini akan keluar ketika aplikasi ini sedang berjalan, tapi sedang tidak ada dilayar.
    }

    if (state == AppLifecycleState.resumed) {
      //Resumed ini ketika aplikasi dikembalikan.
    }
  }
}
