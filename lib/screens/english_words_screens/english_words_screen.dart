import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:playgroundflutterapp/screens/english_words_screens/english_word_list.dart';

class EnglishWordsScreen extends HookWidget {
  const EnglishWordsScreen({super.key});
  static const tabs = [
    Tab(text: '一覧'),
    Tab(text: 'お気に入り'),
  ];

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: tabs.length);
    var visibleJapanese = useState(false);

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
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.autorenew),
            color: visibleJapanese.value ? Colors.orange : Colors.grey,
            onPressed: () {
              visibleJapanese.value = !visibleJapanese.value;
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // タブ表示部分（この部分はAppBarのbottomに設置することもできる）
          TabBar(
            controller: tabController,
            tabs: tabs,
            labelColor: Theme.of(context).primaryColor,
          ),
          // タブの中身
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [
                EnglishWordListScreen(),
                Center(child: Text('お気に入り画面', style: TextStyle(fontSize: 32))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
