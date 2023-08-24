import 'package:flutter/material.dart';

class WidgetCard extends StatelessWidget {
  String widgetName;
  String imageName;
  String overview;
  WidgetCard({
    required this.widgetName,
    required this.imageName,
    required this.overview,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
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
            child: Image.asset('assets/widget_images/$imageName.png'),
          ),
          // ウィジェット名
          SizedBox(
            width: double.infinity,
            child: Text(
              widgetName,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          // ウィジェット概要
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(left: 4),
            child: Text(
              overview,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
