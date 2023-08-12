import 'package:flutter/material.dart';
import 'package:playgroundflutterapp/constants/colors.dart';
import 'package:playgroundflutterapp/screens/cart_screen.dart';
import 'package:playgroundflutterapp/screens/home_screen.dart';
import 'package:playgroundflutterapp/screens/hotels_screen.dart';
import 'package:playgroundflutterapp/screens/playground_screen.dart';
import 'package:playgroundflutterapp/screens/settings_screen.dart';
import 'package:playgroundflutterapp/screens/widgets_collection_screen.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
// ignore: unused_import
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
        primarySwatch: customSwatch,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedBottomNavigationBarIndex = 4;

  static final _screens = [
    const HomeScreen(),
    const HotelsScreen(),
    const CartScreen(),
    const PlaygroundScreen(),
    const WidgetsCollectionScreen(),
    const SettingsScreen(),
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
      body: _screens[_selectedBottomNavigationBarIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedBottomNavigationBarIndex,
        onTap: _onBottomNavigationBarItemTapped,
        items: _bottomNavigationBarItems,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
