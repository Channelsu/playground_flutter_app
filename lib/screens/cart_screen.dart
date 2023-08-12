import 'package:flutter/material.dart';
import 'package:playgroundflutterapp/components/custom_app_bar.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: Center(child: Text('カート画面', style: TextStyle(fontSize: 32.0))),
    );
  }
}
