import 'package:flutter/material.dart';

class PlaygroundScreen extends StatelessWidget {
  const PlaygroundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // 上下（Rowの場合は左右）中央に寄せる
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('abc')],
      ),
    );
  }
}
