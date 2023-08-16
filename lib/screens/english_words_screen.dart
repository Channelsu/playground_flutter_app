import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:playgroundflutterapp/services/english_words_service.dart';

class EnglishWordsScreen extends HookWidget {
  const EnglishWordsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final englishWordController = useTextEditingController();
    final meaningController = useTextEditingController();
    final items = List<String>.generate(20, (i) => "Item $i");
    final englishWords =
        FirebaseFirestore.instance.collection('english-words').get();

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
          ),
          TextField(
            controller: meaningController,
            decoration: const InputDecoration(
              hintText: '意味',
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(title: Text(items[index]));
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final service = EnglishWordsService();
          final document = {
            'title': englishWordController.text,
            'japanese': meaningController.text,
          };
          service.create(document);
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
