import 'package:flutter/material.dart';
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
      // appBar: AppBar(
      //   title: Text(wgt.name),
      // ),
      body: Hero(
        tag: wgt.name,
        child: const Material(
            // child: Ink.image(
            //   image: NetworkImage(hotel.imageLink),
            //   height: 240,
            //   fit: BoxFit.cover,
            // ),
            ),
      ),
    );
  }
}
