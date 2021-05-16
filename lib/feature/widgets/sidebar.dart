import 'package:flutter/material.dart';
import 'package:hydroponics_app/utilities/colors.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: cream,
        boxShadow: [
          BoxShadow(
            color: shadow,
            blurRadius: 6,
            offset: Offset(5, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(
            Icons.menu,
            size: 30,
          ),
          Icon(
            Icons.accessibility_rounded,
            size: 30,
          ),
        ],
      ),
    );
  }
}
