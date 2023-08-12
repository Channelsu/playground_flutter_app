import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 状態管理したい変数を定義
    final counter = useState(0);

    return const Scaffold(
      body: Center(child: Text('ホーム画面', style: TextStyle(fontSize: 32.0))),
    );
  }
}
