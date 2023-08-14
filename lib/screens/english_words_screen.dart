import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class EnglishWordsScreen extends HookWidget {
  const EnglishWordsScreen({super.key});

  // late String englishWord;

  @override
  Widget build(BuildContext context) {
    final englishWordController = useTextEditingController();
    final meaningController = useTextEditingController();
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
      body: Column(
        children: [
          TextField(
            controller: englishWordController,
            decoration: const InputDecoration(
              hintText: '英単語',
            ),
            // onChanged: (englishWord) {
            //   englishWord = englishWord;
            // },
          ),
          TextField(
            controller: meaningController,
            decoration: const InputDecoration(
              hintText: '意味',
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final document = {
            'title': englishWordController.text,
            'japanese': meaningController.text,
          };
          FirebaseFirestore.instance
              .collection('english-words')
              .doc()
              .set(document);
          debugPrint(
              '英単語：${englishWordController.text}　意味：${meaningController.text}');
          englishWordController.clear();
          meaningController.clear();
        },
        tooltip: '新規追加',
        child: const Icon(Icons.add),
      ),
    );
  }
}
