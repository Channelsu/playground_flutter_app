import 'package:flutter/material.dart';

class WidgetsCollectionScreen extends StatefulWidget {
  const WidgetsCollectionScreen({Key? key}) : super(key: key);

  @override
  State<WidgetsCollectionScreen> createState() =>
      _WidgetsCollectionScreenState();
}

class _WidgetsCollectionScreenState extends State<WidgetsCollectionScreen> {
  static const tabs = [
    Tab(text: '基本'),
    Tab(text: 'レイアウト'),
    Tab(text: '入力'),
    Tab(text: 'テキスト'),
    Tab(text: 'アクセシビリティ'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Flutter Widgets Collection',
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
          bottom: const TabBar(
            tabs: tabs,
            isScrollable: true,
            labelPadding: EdgeInsets.only(left: 20, right: 20),
            labelColor: Colors.blue,
            indicatorColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('基本', style: TextStyle(fontSize: 24))),
            Center(child: Text('レイアウト', style: TextStyle(fontSize: 24))),
            Center(child: Text('入力', style: TextStyle(fontSize: 24))),
            Center(child: Text('テキスト', style: TextStyle(fontSize: 24))),
            Center(child: Text('アクセシビリティ', style: TextStyle(fontSize: 24))),
          ],
        ),
      ),
    );
  }
}
