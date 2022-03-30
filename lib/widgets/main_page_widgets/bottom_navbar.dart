import 'package:flutter/material.dart';

import '../../models/bottom_navbar_model.dart';
import '../../utilities.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void onTap(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        elevation: 10,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Utils.mainOrange,
        unselectedItemColor: Utils.mainOrange.withOpacity(0.4),
        onTap: onTap,
        items: BottomNavigatorListModel().toWidgets());
  }
}
