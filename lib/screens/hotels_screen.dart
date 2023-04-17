import 'package:flutter/material.dart';
import 'package:playgroundflutterapp/components/hotel_card.dart';
import 'package:playgroundflutterapp/data/hotel_list.dart';

class HotelsScreen extends StatelessWidget {
  const HotelsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: hotelList.length,
        itemBuilder: ((context, index) {
          final hotel = hotelList[index];
          return HotelCard(hotel: hotel);
        }),
      ),
    );
  }
}
