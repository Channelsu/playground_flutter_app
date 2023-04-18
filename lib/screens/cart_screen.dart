import 'package:flutter/material.dart';

class Cart_Screen extends StatefulWidget {
  const Cart_Screen({super.key});

  @override
  State<Cart_Screen> createState() => _Cart_ScreenState();
}

class _Cart_ScreenState extends State<Cart_Screen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('カート画面', style: TextStyle(fontSize: 32.0))),
    );
  }
}
