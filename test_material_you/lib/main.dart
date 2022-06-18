import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xffFF0000),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 3, vsync: this)
      ..addListener(() {
        setState(() {
          switch (_tabController!.index) {
            case 0:
              appBarTitle = 'Home';
              break;
            case 1:
              appBarTitle = 'Profile';
              break;
            case 2:
              appBarTitle = 'Settings';
              break;
          }
        });
      });
  }

  TabController? _tabController;
  String? appBarTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle.toString()),
      ),
      body: TabBarView(controller: _tabController, children: const [
        HomePage(),
        ProfilePage(),
        SettingsPage(),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _tabController!.index,
        onTap: (int index) {
          setState(() {
            _tabController!.index = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          'Home',
          style: TextStyle(fontSize: 24),
        ),
      ],
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          'Profile',
          style: TextStyle(fontSize: 24),
        ),
      ],
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          'Settings',
          style: TextStyle(fontSize: 24),
        ),
      ],
    );
  }
}
