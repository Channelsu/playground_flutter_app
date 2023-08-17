import 'package:flutter/material.dart';

class CustomSnackBar extends SnackBar {
  CustomSnackBar({
    required BuildContext context,
    required String englishWord,
    required String action,
    super.key,
  }) : super(
          content: Text('$englishWordを$actionしました'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          behavior: SnackBarBehavior.floating,
          showCloseIcon: true,
          elevation: 4.0,
          backgroundColor: Colors.orangeAccent,
          closeIconColor: Colors.white,
          clipBehavior: Clip.hardEdge,
          dismissDirection: DismissDirection.horizontal,
          // action: SnackBarAction(
          //   label: '元に戻す',
          //   onPressed: () {
          //     ScaffoldMessenger.of(context).removeCurrentSnackBar();
          //   },
          // ),
        );
}
