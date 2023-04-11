import 'package:flutter/material.dart';
import 'package:playgroundflutterapp/components/hotel_card.dart';

class HotelsScreen extends StatelessWidget {
  const HotelsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          hotelCard(
            imageLink:
                'https://www.hoshinoresorts.com/hrcms/wp-content/images/2013/10/aa6bf396cf71ed640fd98ae8e0cf71e8.jpg',
            hotelName: '星のや軽井沢',
            place: '長野県・軽井沢',
            price: '38,115',
            tagline: '谷の集落に滞在する',
          ),
          const SizedBox(
            height: 8,
          ),
          hotelCard(
            imageLink:
                'https://www.hoshinoresorts.com/hrcms/wp-content/images/2018/03/6dc82d66815383e8b90e644c43410de1.jpg',
            hotelName: '界 加賀',
            place: '石川県・山代温泉',
            price: '16,000',
            tagline: '加賀伝統の温泉宿',
          ),
          const SizedBox(
            height: 8,
          ),
          hotelCard(
            imageLink:
                'https://www.hoshinoresorts.com/hrcms/wp-content/images/2021/10/NEW_OMOosakaKV_2880_1822.jpg',
            hotelName: 'OMO7大阪',
            place: '大阪府・大阪市',
            price: '12,000',
            tagline: 'ほれてまうわ、なにわ',
          ),
          const SizedBox(
            height: 8,
          ),
          hotelCard(
            imageLink:
                'https://www.hoshinoresorts.com/hrcms/wp-content/images/2020/10/6050_1822_1E2A7984-2.jpg',
            hotelName: 'BEB5軽井沢',
            place: '長野県・軽井沢',
            price: '7,433',
            tagline: '時間を気にせずルーズに',
          ),
          const SizedBox(
            height: 8,
          ),
          // (),
          hotelCard(
            imageLink:
                'https://www.hoshinoresorts.com/hrcms/wp-content/images/2018/03/bb2941b3025267abc537ce36534097c0.jpg',
            hotelName: '青森屋',
            place: '青森県・三沢',
            price: '8,195',
            tagline: 'ハネトが舞い、祭り気分最高',
          ),
        ],
      ),
    );
  }
}
