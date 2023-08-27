import 'package:flutter/material.dart';
import 'package:playgroundflutterapp/components/expandable_text.dart';
import 'package:playgroundflutterapp/model/wgt.dart';

class WidgetDetailScreen extends StatelessWidget {
  final Wgt wgt;
  const WidgetDetailScreen({
    super.key,
    required this.wgt,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black), // 戻るボタンの色
        title: Text(
          wgt.name,
          style: const TextStyle(
            color: Colors.blue,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Hero(
                  tag: wgt.id,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    width: double.infinity,
                    height: 280,
                    child: Image.asset(wgt.imagePath),
                  ),
                ),
                Hero(
                  tag: wgt.name,
                  child: Text(
                    wgt.name,
                    style: Theme.of(context).textTheme.headlineMedium!.merge(
                          const TextStyle(fontWeight: FontWeight.bold),
                        ),
                  ),
                ),
                Hero(
                  tag: wgt.overview,
                  child: Text(
                    wgt.overview,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ExpandableText(wgt.detail)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
