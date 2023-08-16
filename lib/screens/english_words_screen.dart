import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:playgroundflutterapp/services/english_words_service.dart';

class EnglishWordsScreen extends HookWidget {
  const EnglishWordsScreen({super.key});

  Future _showFormDialog(
    BuildContext context,
    TextEditingController englishWordController,
    TextEditingController meaningController,
  ) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return AlertDialog(
          title: const Text("英単語追加"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
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
            ],
          ),
          actions: [
            ElevatedButton(
              child: const Text("キャンセル"),
              onPressed: () => Navigator.pop(context),
            ),
            ElevatedButton(
              child: const Text("追加"),
              onPressed: () {
                final service = EnglishWordsService();
                final document = {
                  'title': englishWordController.text,
                  'japanese': meaningController.text,
                };
                service.create(document);
                debugPrint(
                    '英単語：${englishWordController.text}　意味：${meaningController.text}');
                Navigator.pop(context);
                final simpleSnackBar = SnackBar(
                  content: Text('${englishWordController.text}を追加しました'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  behavior: SnackBarBehavior.floating,
                  showCloseIcon: true,
                  elevation: 4.0,
                  backgroundColor: Colors.orangeAccent,
                  closeIconColor: Colors.white,
                  clipBehavior: Clip.hardEdge,
                  dismissDirection: DismissDirection.horizontal,
                );
                ScaffoldMessenger.of(context).showSnackBar(simpleSnackBar);
                englishWordController.clear();
                meaningController.clear();
              },
            ),
          ],
        );
      },
    );
  }

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
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(title: Text(items[index]));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async => await _showFormDialog(
          context,
          englishWordController,
          meaningController,
        ),
        tooltip: '新規追加',
        child: const Icon(Icons.add),
      ),
    );
  }
}
