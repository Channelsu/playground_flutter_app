import 'package:flutter/material.dart';
import 'package:playgroundflutterapp/screens/home_screen.dart';
import 'package:playgroundflutterapp/screens/hotels_screen.dart';
import 'package:playgroundflutterapp/screens/settings_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Playground For Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedBottomNavigationBarIndex = 0;

  static const _screens = [
    HomeScreen(),
    HotelsScreen(),
    SettingsScreen(),
  ];

  void _onBottomNavigationBarItemTapped(int index) {
    setState(() {
      _selectedBottomNavigationBarIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _screens[_selectedBottomNavigationBarIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedBottomNavigationBarIndex,
        onTap: _onBottomNavigationBarItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ホーム'),
          BottomNavigationBarItem(icon: Icon(Icons.hotel_rounded), label: '旅館'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '設定'),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
