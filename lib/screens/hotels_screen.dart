import 'package:flutter/material.dart';

class HotelsScreen extends StatelessWidget {
  const HotelsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          buildImageInteractionCard(),
          const SizedBox(
            height: 8,
          ),
          buildImageInteractionCard2(),
          const SizedBox(
            height: 8,
          ),
          buildImageInteractionCard3(),
          const SizedBox(
            height: 8,
          ),
          buildImageInteractionCard4(),
          const SizedBox(
            height: 8,
          ),
          buildImageInteractionCard5(),
        ],
      ),
    );
  }

  Widget buildImageInteractionCard() => Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Ink.image(
                  image: const NetworkImage(
                    'https://www.hoshinoresorts.com/hrcms/wp-content/images/2013/10/aa6bf396cf71ed640fd98ae8e0cf71e8.jpg',
                  ),
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
              child: GestureDetector(
                onTap: null,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                    // boxShadow: <BoxShadow>[
                    //   BoxShadow(
                    //     color: Colors.grey.withOpacity(0.6),
                    //     offset: const Offset(4, 4),
                    //     blurRadius: 16,
                    //   ),
                    // ],
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                    child: Stack(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16, top: 8, bottom: 8),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          const Text(
                                            '??????????????????',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 22,
                                            ),
                                          ),
                                          Text(
                                            '?????????????????????',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey
                                                    .withOpacity(0.8)),
                                          ),
                                          Row(
                                            children: const <Widget>[
                                              // Text(
                                              //   '???????????????????????????',
                                              //   style: TextStyle(
                                              //       fontSize: 14,
                                              //       color: Colors.grey
                                              //           .withOpacity(0.8)),
                                              // ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              // Icon(
                                              //   FontAwesomeIcons.locationDot,
                                              //   size: 12,
                                              //   color: HotelAppTheme
                                              //           .buildLightTheme()
                                              //       .primaryColor,
                                              // ),
                                              // Expanded(
                                              //   child: Text(
                                              //     ' km to city',
                                              //     overflow:
                                              //         TextOverflow.ellipsis,
                                              //     style: TextStyle(
                                              //         fontSize: 14,
                                              //         color: Colors.grey
                                              //             .withOpacity(0.8)),
                                              //   ),
                                              // ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 16, top: 8),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: <Widget>[
                                        const Text(
                                          '\??38,115???',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 22,
                                          ),
                                        ),
                                        Text(
                                          '???????????????????????????',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color:
                                                  Colors.grey.withOpacity(0.8)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  Widget buildImageInteractionCard2() => Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Ink.image(
                  image: const NetworkImage(
                    'https://www.hoshinoresorts.com/hrcms/wp-content/images/2018/03/6dc82d66815383e8b90e644c43410de1.jpg',
                  ),
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
              child: GestureDetector(
                onTap: null,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                    // boxShadow: <BoxShadow>[
                    //   BoxShadow(
                    //     color: Colors.grey.withOpacity(0.6),
                    //     offset: const Offset(4, 4),
                    //     blurRadius: 16,
                    //   ),
                    // ],
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                    child: Stack(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16, top: 8, bottom: 8),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          const Text(
                                            '??? ??????',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 22,
                                            ),
                                          ),
                                          Text(
                                            '????????????????????????',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey
                                                    .withOpacity(0.8)),
                                          ),
                                          Row(
                                            children: const <Widget>[
                                              // Text(
                                              //   '???????????????????????????',
                                              //   style: TextStyle(
                                              //       fontSize: 14,
                                              //       color: Colors.grey
                                              //           .withOpacity(0.8)),
                                              // ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              // Icon(
                                              //   FontAwesomeIcons.locationDot,
                                              //   size: 12,
                                              //   color: HotelAppTheme
                                              //           .buildLightTheme()
                                              //       .primaryColor,
                                              // ),
                                              // Expanded(
                                              //   child: Text(
                                              //     ' km to city',
                                              //     overflow:
                                              //         TextOverflow.ellipsis,
                                              //     style: TextStyle(
                                              //         fontSize: 14,
                                              //         color: Colors.grey
                                              //             .withOpacity(0.8)),
                                              //   ),
                                              // ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 16, top: 8),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: <Widget>[
                                        const Text(
                                          '\??16,000???',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 22,
                                          ),
                                        ),
                                        Text(
                                          '????????????????????????',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color:
                                                  Colors.grey.withOpacity(0.8)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  Widget buildImageInteractionCard3() => Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Ink.image(
                  image: const NetworkImage(
                    'https://www.hoshinoresorts.com/hrcms/wp-content/images/2021/10/NEW_OMOosakaKV_2880_1822.jpg',
                  ),
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
              child: GestureDetector(
                onTap: null,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                    // boxShadow: <BoxShadow>[
                    //   BoxShadow(
                    //     color: Colors.grey.withOpacity(0.6),
                    //     offset: const Offset(4, 4),
                    //     blurRadius: 16,
                    //   ),
                    // ],
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                    child: Stack(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16, top: 8, bottom: 8),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          const Text(
                                            'OMO7??????',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 22,
                                            ),
                                          ),
                                          Text(
                                            '?????????????????????',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey
                                                    .withOpacity(0.8)),
                                          ),
                                          Row(
                                            children: const <Widget>[
                                              // Text(
                                              //   '???????????????????????????',
                                              //   style: TextStyle(
                                              //       fontSize: 14,
                                              //       color: Colors.grey
                                              //           .withOpacity(0.8)),
                                              // ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              // Icon(
                                              //   FontAwesomeIcons.locationDot,
                                              //   size: 12,
                                              //   color: HotelAppTheme
                                              //           .buildLightTheme()
                                              //       .primaryColor,
                                              // ),
                                              // Expanded(
                                              //   child: Text(
                                              //     ' km to city',
                                              //     overflow:
                                              //         TextOverflow.ellipsis,
                                              //     style: TextStyle(
                                              //         fontSize: 14,
                                              //         color: Colors.grey
                                              //             .withOpacity(0.8)),
                                              //   ),
                                              // ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 16, top: 8),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: <Widget>[
                                        const Text(
                                          '\??12,000???',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 22,
                                          ),
                                        ),
                                        Text(
                                          '??????????????????????????????',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color:
                                                  Colors.grey.withOpacity(0.8)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  Widget buildImageInteractionCard4() => Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Ink.image(
                  image: const NetworkImage(
                    'https://www.hoshinoresorts.com/hrcms/wp-content/images/2020/10/6050_1822_1E2A7984-2.jpg',
                  ),
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
              child: GestureDetector(
                onTap: null,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                    // boxShadow: <BoxShadow>[
                    //   BoxShadow(
                    //     color: Colors.grey.withOpacity(0.6),
                    //     offset: const Offset(4, 4),
                    //     blurRadius: 16,
                    //   ),
                    // ],
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                    child: Stack(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16, top: 8, bottom: 8),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          const Text(
                                            'BEB5?????????',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 22,
                                            ),
                                          ),
                                          Text(
                                            '?????????????????????',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey
                                                    .withOpacity(0.8)),
                                          ),
                                          Row(
                                            children: const <Widget>[
                                              // Text(
                                              //   '???????????????????????????',
                                              //   style: TextStyle(
                                              //       fontSize: 14,
                                              //       color: Colors.grey
                                              //           .withOpacity(0.8)),
                                              // ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              // Icon(
                                              //   FontAwesomeIcons.locationDot,
                                              //   size: 12,
                                              //   color: HotelAppTheme
                                              //           .buildLightTheme()
                                              //       .primaryColor,
                                              // ),
                                              // Expanded(
                                              //   child: Text(
                                              //     ' km to city',
                                              //     overflow:
                                              //         TextOverflow.ellipsis,
                                              //     style: TextStyle(
                                              //         fontSize: 14,
                                              //         color: Colors.grey
                                              //             .withOpacity(0.8)),
                                              //   ),
                                              // ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 16, top: 8),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: <Widget>[
                                        const Text(
                                          '\??7,433???',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 22,
                                          ),
                                        ),
                                        Text(
                                          '?????????????????????????????????',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color:
                                                  Colors.grey.withOpacity(0.8)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  Widget buildImageInteractionCard5() => Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Ink.image(
                  image: const NetworkImage(
                    'https://www.hoshinoresorts.com/hrcms/wp-content/images/2018/03/bb2941b3025267abc537ce36534097c0.jpg',
                  ),
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
              child: GestureDetector(
                onTap: null,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                    // boxShadow: <BoxShadow>[
                    //   BoxShadow(
                    //     color: Colors.grey.withOpacity(0.6),
                    //     offset: const Offset(4, 4),
                    //     blurRadius: 16,
                    //   ),
                    // ],
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                    child: Stack(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16, top: 8, bottom: 8),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          const Text(
                                            '?????????',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 22,
                                            ),
                                          ),
                                          Text(
                                            '??????????????????',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey
                                                    .withOpacity(0.8)),
                                          ),
                                          Row(
                                            children: const <Widget>[
                                              // Text(
                                              //   '???????????????????????????',
                                              //   style: TextStyle(
                                              //       fontSize: 14,
                                              //       color: Colors.grey
                                              //           .withOpacity(0.8)),
                                              // ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              // Icon(
                                              //   FontAwesomeIcons.locationDot,
                                              //   size: 12,
                                              //   color: HotelAppTheme
                                              //           .buildLightTheme()
                                              //       .primaryColor,
                                              // ),
                                              // Expanded(
                                              //   child: Text(
                                              //     ' km to city',
                                              //     overflow:
                                              //         TextOverflow.ellipsis,
                                              //     style: TextStyle(
                                              //         fontSize: 14,
                                              //         color: Colors.grey
                                              //             .withOpacity(0.8)),
                                              //   ),
                                              // ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 16, top: 8),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: <Widget>[
                                        const Text(
                                          '\??8,195???',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 22,
                                          ),
                                        ),
                                        Text(
                                          '???????????????????????????????????????',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color:
                                                  Colors.grey.withOpacity(0.8)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
