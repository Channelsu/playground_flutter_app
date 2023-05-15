import 'package:flutter/material.dart';

class PlaygroundScreen extends StatefulWidget {
  const PlaygroundScreen({Key? key}) : super(key: key);

  @override
  State<PlaygroundScreen> createState() => _PlaygroundScreenState();
}

class _PlaygroundScreenState extends State<PlaygroundScreen> {
  // 状態（state）
  int _count = 1;

  // ロジック
  void countTwice() {
    setState(() {
      _count = _count * 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // 上下（Rowの場合は左右）中央に寄せる
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$_count'),
            OutlinedButton(
              onPressed: countTwice,
              child: const Text('2倍！！'),
            )
          ],
        ),
      ),
    );
  }
}
