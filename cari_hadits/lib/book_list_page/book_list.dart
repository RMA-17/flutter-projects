import 'package:flutter/material.dart';

class ListBookPage extends StatefulWidget {
  const ListBookPage({Key? key}) : super(key: key);

  @override
  State<ListBookPage> createState() => _ListBookPageState();
}

class _ListBookPageState extends State<ListBookPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text('ListBookPage'),
    );
  }
}
