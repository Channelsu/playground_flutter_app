import 'package:flutter/material.dart';
import 'package:playgroundflutterapp/model/wgt.dart';

class WidgetDetailScreen extends StatelessWidget {
  final Wgt wgt;
  const WidgetDetailScreen({
    super.key,
    required this.wgt,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black), // 戻るボタンの色
        title: Text(
          wgt.name,
          style: const TextStyle(
            color: Colors.blue,
          ),
        ),
      ),
      body: Column(
        children: [
          Hero(
            tag: wgt.id,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              width: double.infinity,
              height: 300,
              child: Image.asset(wgt.imagePath),
            ),
          ),
          Hero(
            tag: wgt.name,
            child: Text(
              wgt.name,
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
        ],
      ),
    );
  }
}
