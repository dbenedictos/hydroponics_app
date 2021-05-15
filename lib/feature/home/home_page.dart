import 'package:flutter/material.dart';
import 'package:hydroponics_app/feature/widgets/sidebar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            SideBar(),
          ],
        ),
      ),
    );
  }
}
