import 'package:cari_hadits/book_list_page/book_list.dart';
import 'package:cari_hadits/search_page/search_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _title = 'Cari Hadits';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: PageView(
        physics: const PageScrollPhysics(),
        children: const [
          SearchPage(),
          ListBookPage(),
        ],
      ),
    );
  }
}
