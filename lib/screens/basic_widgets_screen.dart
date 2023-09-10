import 'package:flutter/material.dart';
import 'package:playgroundflutterapp/components/widget_card.dart';
import 'package:playgroundflutterapp/data/widget_list.dart';

class BasicWidgetsScreen extends StatelessWidget {
  const BasicWidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        padding: const EdgeInsets.all(8.0),
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 2 / 2.4, // Todo:ここでCardの高さ調整
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        children: [
          for (final wgt in widgetList) WidgetCard(wgt: wgt),
        ],
      ),
    );
  }
}
