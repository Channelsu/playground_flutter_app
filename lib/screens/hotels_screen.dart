import 'package:flutter/material.dart';
import 'package:playgroundflutterapp/components/hotel_card.dart';
import 'package:playgroundflutterapp/data/hotel_list.dart';
import 'package:playgroundflutterapp/model/hotel.dart';
import 'package:playgroundflutterapp/screens/hotel_detail_screen.dart';

class HotelsScreen extends StatelessWidget {
  const HotelsScreen({Key? key}) : super(key: key);

  // ホテル詳細画面への遷移メソッド
  void goToHotelDetailScreen(BuildContext context, Hotel hotel) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: ((context) => HotelDetailScreen(hotel: hotel)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: hotelList.length,
        itemBuilder: ((context, index) {
          final hotel = hotelList[index];
          // もしかしてhotelを渡せば良いのでは？
          return HotelCard(
            imageLink: hotel.imageLink,
            hotelName: hotel.name,
            place: hotel.place,
            price: hotel.price,
            tagline: hotel.tagline,
            onTap: () => goToHotelDetailScreen(context, hotel),
          );
        }),
      ),
    );
  }
}
