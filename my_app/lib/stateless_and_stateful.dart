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
