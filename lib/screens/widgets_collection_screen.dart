import 'package:flutter/material.dart';

class WidgetsCollectionScreen extends StatefulWidget {
  const WidgetsCollectionScreen({Key? key}) : super(key: key);

  @override
  State<WidgetsCollectionScreen> createState() =>
      _WidgetsCollectionScreenState();
}

class _WidgetsCollectionScreenState extends State<WidgetsCollectionScreen>
    with TickerProviderStateMixin {
  static const tabs = [
    Tab(text: '基本'),
    Tab(text: 'レイアウト'),
    Tab(text: '入力'),
    Tab(text: 'テキスト'),
    Tab(text: 'アクセシビリティ'),
  ];

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(
      length: tabs.length,
      vsync: this,
    );

    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              controller: tabController,
              isScrollable: true,
              labelPadding: const EdgeInsets.only(left: 20, right: 20),
              labelColor: Colors.blue,
              indicatorColor: Colors.blue,
              unselectedLabelColor: Colors.grey,
              tabs: tabs,
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [
                Text('基本'),
                Text('レイアウト'),
                Text('入力'),
                Text('テキスト'),
                Text('アクセシビリティ'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
