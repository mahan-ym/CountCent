import 'package:flutter/material.dart';

import 'bottom_nav_background.dart';
import 'bottom_nav_icon.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavButtons();
}

class _BottomNavButtons extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = 56;

    var backgroundColor = Theme.of(context).bottomAppBarColor;
    var defaultColor = Theme.of(context).primaryColor;
    return BottomAppBar(
      color: Colors.transparent,
      elevation: 0,
      child: Stack(
        children: [
          CustomPaint(
            size: Size(size.width, height + 6),
            painter: BottomNavBackground(backgroundColor: backgroundColor),
          ),
          Center(
            heightFactor: 0.6,
            child: FloatingActionButton(
                backgroundColor: backgroundColor,
                elevation: 0.1,
                onPressed: () {},
                child: Icon(
                    Icons.add,
                    color: defaultColor,
                )
            ),
          ),
          Container(
            height: height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BottomNavIcon(
                  text: "Report",
                  icon: Icons.paste_outlined,
                  selected: true,
                  onPressed: () {}
                ),
                BottomNavIcon(
                  text: "Home",
                  icon: Icons.home_outlined,
                  selected: false,
                  onPressed: () {}
                ),
                SizedBox(width: 56),
                BottomNavIcon(
                    text: "Overview",
                    icon: Icons.search_outlined,
                    selected: false,
                    onPressed: () {}
                ),
                BottomNavIcon(
                  text: "Setting",
                  icon: Icons.settings_outlined,
                  selected: false,
                  onPressed: () {}
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
