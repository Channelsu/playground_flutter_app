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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // 上下（Rowの場合は左右）中央に寄せる
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$_count'),
              OutlinedButton(
                onPressed: countTwice,
                child: const Text('2倍！！'),
              ),
              const SizedBox(height: 32),
              // 入力欄サンプル1
              SizedBox(
                // 入力欄横幅
                width: MediaQuery.of(context).size.width * 0.7,
                // 入力欄高さ
                height: 48,
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 32),
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
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 8),
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
              // 横長カードサンプル2
              Card(
                elevation: 0,
                margin: const EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Stack(
                  children: [
                    // 商品画像
                    Container(
                      width: double.infinity,
                      height: 260,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://source.unsplash.com/300x200/?tree'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // オーバーレイ
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        color: Colors.grey.withOpacity(0.5),
                        padding: const EdgeInsets.all(4),
                        height: 96,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'タイトル',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 22,
                              ),
                            ),
                            Text(
                              'ここに説明文が入ります。ここに説明文が入ります。ここに説明文が入ります。ここに説明文が入ります。',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // 横長カードサンプル3
              const SizedBox(height: 12),
              SizedBox(
                height: 230,
                child: Stack(
                  children: [
                    Positioned(
                      top: 35,
                      left: 20,
                      // elevationを付けるためMaterialウィジェットを使用
                      child: Material(
                        elevation: 4,
                        child: Container(
                          height: 180,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                        ),
                      ),
                    ),
                    // 画像部分
                    Positioned(
                      top: 0,
                      left: 30,
                      child: Card(
                        elevation: 4,
                        shadowColor: Colors.grey.withOpacity(0.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: NetworkImage(
                                  'https://source.unsplash.com/300x200/?beach',
                                ),
                                fit: BoxFit.fill,
                              )),
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 45,
                      left: 200,
                      child: SizedBox(
                        height: 150,
                        width: 180,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // タイトル
                            Text(
                              'タイトル',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 22,
                              ),
                            ),
                            Divider(color: Colors.black),
                            // 説明文
                            Text(
                              'ここに説明文が入ります。ここに説明文が入ります。ここに説明文が入ります。',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // 横長カードサンプル4
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.network(
                      'https://source.unsplash.com/300x200/?resort',
                      height: 160,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'タイトル',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.grey[800],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'ここに説明文が入ります。ここに説明文が入ります。ここに説明文が入ります。ここに説明文が入ります。',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey[700],
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              const Spacer(),
                              TextButton(
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.transparent,
                                ),
                                child: const Text(
                                  'シェア',
                                  style: TextStyle(color: Colors.pinkAccent),
                                ),
                                onPressed: () {},
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.transparent,
                                ),
                                child: const Text(
                                  'もっと見る',
                                  style: TextStyle(color: Colors.pinkAccent),
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 4),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              // 横長カードサンプル5
            ],
          ),
        ),
      ),
    );
  }
}
