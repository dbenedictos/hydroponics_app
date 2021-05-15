import 'package:flutter/material.dart';
import 'package:hydroponics_app/feature/widgets/sidebar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            SideBar(),
            Expanded(
              child: Center(
                child: Image.asset(
                  'assets/sheila.png',
                  fit: BoxFit.fill,
                  height: screenSize.height,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
