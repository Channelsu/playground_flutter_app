import 'package:flutter/material.dart';

class EnglishWordsScreen extends StatelessWidget {
  const EnglishWordsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: const Text(
          '英単語帳',
          style: TextStyle(
            color: Colors.orange,
          ),
        ),
      ),
      body:
          const Center(child: Text('英単語帳画面', style: TextStyle(fontSize: 32.0))),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: '新規追加',
        child: Icon(Icons.add),
      ),
    );
  }
}
