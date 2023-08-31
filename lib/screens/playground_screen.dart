import 'package:flutter/material.dart';

class PlaygroundScreen extends StatefulWidget {
  const PlaygroundScreen({Key? key}) : super(key: key);

  @override
  State<PlaygroundScreen> createState() => _PlaygroundScreenState();
}

class _PlaygroundScreenState extends State<PlaygroundScreen> {
  // 状態（state）
  int _count = 1;

  // ロジック
  void countTwice() {
    setState(() {
      _count = _count * 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // 上下（Rowの場合は左右）中央に寄せる
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$_count'),
            OutlinedButton(
              onPressed: countTwice,
              child: const Text('2倍！！'),
            ),
            // 横長カードサンプル1
            Card(
              elevation: 4,
              margin: const EdgeInsets.all(16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer, // 画像を丸角にする
              child: Column(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 200,
                        child: Image.network(
                          'https://source.unsplash.com/300x200/?resort',
                          fit: BoxFit.cover,
                        ),
                      ),
                      // ハートアイコン
                      Positioned(
                        top: 16,
                        right: 16,
                        child: IconButton(
                          icon: const Icon(
                            Icons.favorite_outline,
                            color: Colors.white,
                          ),
                          iconSize: 28,
                          padding: EdgeInsets.zero,
                          constraints:
                              const BoxConstraints(), // アイコンボタンの余白を0にするため記述
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  // タイトル
                  Container(
                    width: double.infinity,
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    child: const Text(
                      'タイトル',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  // 説明文
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: const Text(
                      'ここに説明文が入ります。ここに説明文が入ります。ここに説明文が入ります。ここに説明文が入ります。',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
