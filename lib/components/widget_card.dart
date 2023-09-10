import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:playgroundflutterapp/model/wgt.dart';

class WidgetCard extends StatelessWidget {
  Wgt wgt;
  WidgetCard({
    required this.wgt,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        child: Column(
          children: [
            // ウィジェット画像
            Hero(
              tag: wgt.id,
              child: SizedBox(
                width: double.infinity,
                height: 128,
                child: Image.asset(wgt.imagePath),
              ),
            ),
            const SizedBox(height: 8),
            // ウィジェット名
            SizedBox(
              width: double.infinity,
              child: Hero(
                tag: wgt.name,
                child: Text(
                  wgt.name,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
            const SizedBox(height: 8),
            // ウィジェット概要
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 4),
              child: Hero(
                tag: wgt.overview,
                child: Text(
                  wgt.overview,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        context.push('/widget-detail', extra: wgt);
      },
    );
  }
}
