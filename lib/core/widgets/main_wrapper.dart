import 'package:flutter/material.dart';
import 'bottom_navigation/bottom_nav.dart';

class MainWrapper extends StatelessWidget {
  const MainWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
