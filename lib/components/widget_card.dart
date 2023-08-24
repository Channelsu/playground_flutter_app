import 'package:flutter/material.dart';
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
            SizedBox(
              width: double.infinity,
              height: 128,
              child: Image.asset(wgt.imagePath),
            ),
            // ウィジェット名
            SizedBox(
              width: double.infinity,
              child: Text(
                wgt.name,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            // ウィジェット概要
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 4),
              child: Text(
                wgt.overview,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
      onTap: () {},
    );
  }
}
