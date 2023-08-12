import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize {
    return const Size(double.infinity, 56.0);
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Image.asset(
        'assets/app_logo.png',
        height: 120,
        width: 120,
      ),
    );
  }
}
