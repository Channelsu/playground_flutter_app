import 'package:flutter/material.dart';
import 'package:playgroundflutterapp/screens/hotel_detail_screen.dart';

class HotelCard extends StatelessWidget {
  String imageLink;
  String hotelName;
  String place;
  String price;
  String tagline;
  void Function()? onTap;
  HotelCard({
    super.key,
    required this.imageLink,
    required this.hotelName,
    required this.place,
    required this.price,
    required this.tagline,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.all(12),
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        // 画像部分とテキスト部分の2つ
        child: Column(
          children: [
            Stack(
              children: [
                Ink.image(
                  image: NetworkImage(imageLink),
                  height: 240,
                  fit: BoxFit.cover,
                ),
                const Positioned(
                  top: 8,
                  right: 8,
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.all(
                        Radius.circular(32.0),
                      ),
                      onTap: null,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16).copyWith(bottom: 0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                child: Stack(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, top: 8, bottom: 8),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      hotelName,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 22,
                                      ),
                                    ),
                                    Text(
                                      place,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey.withOpacity(0.8),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 16, top: 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    '¥$price〜',
                                    textAlign: TextAlign.left,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 22,
                                    ),
                                  ),
                                  Text(
                                    tagline,
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey.withOpacity(0.8)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget hotelCard({
//   required String imageLink,
//   required String hotelName,
//   required String place,
//   required String price,
//   required String tagline,
// }) =>
//     Card(
//       margin: const EdgeInsets.all(12),
//       clipBehavior: Clip.antiAlias,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(24),
//       ),
//       child: Column(
//         children: [
//           Stack(
//             children: [
//               Ink.image(
//                 image: NetworkImage(imageLink),
//                 height: 240,
//                 fit: BoxFit.cover,
//               ),
//               const Positioned(
//                 top: 8,
//                 right: 8,
//                 child: Material(
//                   color: Colors.transparent,
//                   child: InkWell(
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(32.0),
//                     ),
//                     onTap: null,
//                     child: Padding(
//                       padding: EdgeInsets.all(8.0),
//                       child: Icon(
//                         Icons.favorite_border,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16).copyWith(bottom: 0),
//             child: GestureDetector(
//               onTap: null,
//               child: Container(
//                 decoration: const BoxDecoration(
//                   borderRadius: BorderRadius.all(Radius.circular(16.0)),
//                 ),
//                 child: ClipRRect(
//                   borderRadius: const BorderRadius.all(Radius.circular(16.0)),
//                   child: Stack(
//                     children: <Widget>[
//                       Column(
//                         children: <Widget>[
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: <Widget>[
//                               Expanded(
//                                 child: Padding(
//                                   padding: const EdgeInsets.only(
//                                       left: 16, top: 8, bottom: 8),
//                                   child: Column(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: <Widget>[
//                                       Text(
//                                         hotelName,
//                                         textAlign: TextAlign.left,
//                                         style: const TextStyle(
//                                           fontWeight: FontWeight.w600,
//                                           fontSize: 22,
//                                         ),
//                                       ),
//                                       Text(
//                                         place,
//                                         style: TextStyle(
//                                           fontSize: 14,
//                                           color: Colors.grey.withOpacity(0.8),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.only(right: 16, top: 8),
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.end,
//                                   children: <Widget>[
//                                     Text(
//                                       '¥$price〜',
//                                       textAlign: TextAlign.left,
//                                       style: const TextStyle(
//                                         fontWeight: FontWeight.w600,
//                                         fontSize: 22,
//                                       ),
//                                     ),
//                                     Text(
//                                       tagline,
//                                       style: TextStyle(
//                                           fontSize: 14,
//                                           color: Colors.grey.withOpacity(0.8)),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
