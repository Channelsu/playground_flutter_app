import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:playgroundflutterapp/components/custom_snack_bar.dart';
import 'package:playgroundflutterapp/constants/strings.dart';
import 'package:playgroundflutterapp/model/english_word.dart';
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
                final englishWord = EnglishWord(
                  title: englishWordController.text,
                  japanese: meaningController.text,
                  createdAt: Timestamp.now(),
                  updatedAt: Timestamp.now(),
                );
                EnglishWordsService().create(englishWord);
                debugPrint(
                    '英単語：${englishWordController.text}　意味：${meaningController.text}を追加');
                Navigator.pop(context);
                final customSnackBar = CustomSnackBar(
                  context: context,
                  englishWord: englishWordController.text,
                  action: ActionType.add,
                );
                ScaffoldMessenger.of(context).showSnackBar(customSnackBar);
                englishWordController.clear();
                meaningController.clear();
              },
            ),
          ],
        );
      },
    );
  }

  Future _showDeleteConfirmDialog(
    BuildContext context,
    EnglishWord selectedEnglishWord,
  ) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return AlertDialog(
          content: Text('${selectedEnglishWord.title}を削除します。\nよろしいですか？'),
          actions: [
            ElevatedButton(
              child: const Text("キャンセル"),
              onPressed: () => Navigator.pop(context),
            ),
            ElevatedButton(
              child: const Text("削除"),
              onPressed: () {
                EnglishWordsService().delete(selectedEnglishWord.id);
                debugPrint(
                    '英単語：${selectedEnglishWord.title}　意味：${selectedEnglishWord.japanese}を削除');
                Navigator.pop(context);
                final customSnackBar = CustomSnackBar(
                  context: context,
                  englishWord: selectedEnglishWord.title,
                  action: ActionType.delete,
                );
                ScaffoldMessenger.of(context).showSnackBar(customSnackBar);
              },
            ),
          ],
        );
      },
    );
  }

  Widget _buildTile(BuildContext context, EnglishWord englishWord) => ListTile(
        title: Text(englishWord.title),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () async =>
              await _showDeleteConfirmDialog(context, englishWord),
        ),
      );

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
      body: StreamBuilder<List<EnglishWord>>(
        stream: EnglishWordsService().getEnglishWords(),
        builder:
            (BuildContext context, AsyncSnapshot<List<EnglishWord>> snapshot) {
          if (snapshot.hasError) {
            return Text('エラー：${snapshot.error}');
          } else if (snapshot.hasData) {
            final englishWords = snapshot.data!;
            return ListView.builder(
              itemCount: englishWords.length,
              itemBuilder: (BuildContext context, int index) {
                final englishWord = englishWords[index];
                return _buildTile(context, englishWord);
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
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
