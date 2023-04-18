import 'package:flutter/material.dart';
import 'package:playgroundflutterapp/screens/cart_screen.dart';
import 'package:playgroundflutterapp/screens/home_screen.dart';
import 'package:playgroundflutterapp/screens/hotels_screen.dart';
import 'package:playgroundflutterapp/screens/playground_screen.dart';
import 'package:playgroundflutterapp/screens/settings_screen.dart';
import 'package:playgroundflutterapp/screens/widgets_collection_screen.dart';

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
      home: const MyHomePage(title: 'おすすめの旅館'),
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
  int _selectedBottomNavigationBarIndex = 1;

  static const _screens = [
    HomeScreen(),
    HotelsScreen(),
    CartScreen(),
    PlaygroundScreen(),
    WidgetsCollectionScreen(),
    SettingsScreen(),
  ];

  static const List<BottomNavigationBarItem> _bottomNavigationBarItems = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ホーム'),
    BottomNavigationBarItem(icon: Icon(Icons.hotel_rounded), label: '旅館'),
    BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'カート'),
    BottomNavigationBarItem(icon: Icon(Icons.play_circle), label: ' プレグラ'),
    BottomNavigationBarItem(icon: Icon(Icons.widgets_sharp), label: 'Widgets'),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: '設定'),
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
        items: _bottomNavigationBarItems,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
