import 'package:flutter/material.dart';
import 'package:playgroundflutterapp/model/english_word.dart';

class EnglishWordDetailScreen extends StatelessWidget {
  EnglishWord englishWord;
  EnglishWordDetailScreen(this.englishWord, {super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Center(
            child: Text('あああ'),
          )
        ],
      ),
    );
  }
}
