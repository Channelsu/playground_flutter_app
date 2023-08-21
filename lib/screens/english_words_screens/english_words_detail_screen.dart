import 'package:flutter/material.dart';
import 'package:playgroundflutterapp/model/english_word.dart';

class EnglishWordDetailScreen extends StatelessWidget {
  EnglishWord englishWord;
  EnglishWordDetailScreen(this.englishWord, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black), // 戻る矢印の色
        backgroundColor: Colors.white,
        elevation: 1,
        title: const Text(
          '英単語詳細',
          style: TextStyle(
            color: Colors.orange,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(englishWord.title),
            Text(englishWord.japanese),
          ],
        ),
      ),
    );
  }
}
