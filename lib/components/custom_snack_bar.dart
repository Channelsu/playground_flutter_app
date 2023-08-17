import 'package:flutter/material.dart';
import 'package:playgroundflutterapp/constants/strings.dart';

class CustomSnackBar extends SnackBar {
  CustomSnackBar({
    required BuildContext context,
    required String englishWord,
    required ActionType action,
    super.key,
  }) : super(
          content: Text('$englishWordを${action.inJapanese}しました'),
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
