import 'package:flutter/material.dart';

class BasicWidgetsScreen extends StatelessWidget {
  const BasicWidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final widgetCards = [
      Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        child: Column(
          children: [
            // ウィジェット画像
            SizedBox(
              width: double.infinity,
              height: 128,
              child: Image.asset('assets/widget_images/app_bar.png'),
            ),
            // ウィジェット名
            SizedBox(
              width: double.infinity,
              child: Text(
                'AppBar',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            // ウィジェット説明文
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 4),
              child: Text(
                '説明文説明文説明文説明文説明文',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
      Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        child: Column(
          children: [
            // ウィジェット画像
            SizedBox(
              width: double.infinity,
              height: 128,
              child: Image.asset('assets/widget_images/app_bar.png'),
            ),
            // ウィジェット名
            SizedBox(
              width: double.infinity,
              child: Text(
                'AppBar',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            // ウィジェット説明文
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 4),
              child: Text(
                '説明文説明文説明文説明文説明文',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
      Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        child: Column(
          children: [
            // ウィジェット画像
            SizedBox(
              width: double.infinity,
              height: 128,
              child: Image.asset('assets/widget_images/app_bar.png'),
            ),
            // ウィジェット名
            SizedBox(
              width: double.infinity,
              child: Text(
                'AppBar',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            // ウィジェット説明文
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 4),
              child: Text(
                '説明文説明文説明文説明文説明文',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
      Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        child: Column(
          children: [
            // ウィジェット画像
            SizedBox(
              width: double.infinity,
              height: 128,
              child: Image.asset('assets/widget_images/app_bar.png'),
            ),
            // ウィジェット名
            SizedBox(
              width: double.infinity,
              child: Text(
                'AppBar',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            // ウィジェット説明文
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 4),
              child: Text(
                '説明文説明文説明文説明文説明文',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
      Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        child: Column(
          children: [
            // ウィジェット画像
            SizedBox(
              width: double.infinity,
              height: 128,
              child: Image.asset('assets/widget_images/app_bar.png'),
            ),
            // ウィジェット名
            SizedBox(
              width: double.infinity,
              child: Text(
                'AppBar',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            // ウィジェット説明文
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 4),
              child: Text(
                '説明文説明文説明文説明文説明文',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
      Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        child: Column(
          children: [
            // ウィジェット画像
            SizedBox(
              width: double.infinity,
              height: 128,
              child: Image.asset('assets/widget_images/app_bar.png'),
            ),
            // ウィジェット名
            SizedBox(
              width: double.infinity,
              child: Text(
                'AppBar',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            // ウィジェット説明文
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 4),
              child: Text(
                '説明文説明文説明文説明文説明文',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
      Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        child: Column(
          children: [
            // ウィジェット画像
            SizedBox(
              width: double.infinity,
              height: 128,
              child: Image.asset('assets/widget_images/app_bar.png'),
            ),
            // ウィジェット名
            SizedBox(
              width: double.infinity,
              child: Text(
                'AppBar',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            // ウィジェット説明文
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 4),
              child: Text(
                '説明文説明文説明文説明文説明文',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
    ];
    return Scaffold(
      body: GridView.count(
        padding: const EdgeInsets.all(8.0),
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 2 / 2.25, // Todo:ここでCardの高さ調整
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        children: [...widgetCards],
      ),
    );
  }
}
