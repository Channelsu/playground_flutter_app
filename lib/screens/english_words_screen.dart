import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class EnglishWordsScreen extends HookWidget {
  const EnglishWordsScreen({super.key});

  Future _showFormDialog(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return AlertDialog(
          title: const Text("This is the title"),
          content: const Text("This is the content"),
          actions: [
            ElevatedButton(
              child: const Text("Cancel"),
              onPressed: () => Navigator.pop(context),
            ),
            ElevatedButton(
              child: const Text("OK"),
              onPressed: () => print('OK'),
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
        // onPressed: () {
        //   final service = EnglishWordsService();
        //   final document = {
        //     'title': englishWordController.text,
        //     'japanese': meaningController.text,
        //   };
        //   service.create(document);
        //   debugPrint(
        //       '英単語：${englishWordController.text}　意味：${meaningController.text}');
        //   englishWordController.clear();
        //   meaningController.clear();
        // },
        onPressed: () async => await _showFormDialog(context),
        tooltip: '新規追加',
        child: const Icon(Icons.add),
      ),
    );
  }
}
