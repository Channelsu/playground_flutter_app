import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:playgroundflutterapp/model/hotel.dart';

class HotelDetailScreen extends StatelessWidget {
  final Hotel hotel;
  const HotelDetailScreen({
    super.key,
    required this.hotel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(hotel.name),
      ),
      body: Ink.image(
        image: NetworkImage(hotel.imageLink),
        height: 240,
        fit: BoxFit.cover,
      ),
    );
  }
}
