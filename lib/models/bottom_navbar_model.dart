import 'package:flutter/material.dart';

class BottomNavigatorModel {
  final IconData icon;
  final String title = '';
  final double iconSize = 25;

  BottomNavigatorModel(this.icon);
}

class BottomNavigatorListModel {
  late final List<BottomNavigatorModel> _items;
  BottomNavigatorListModel() {
    _items = [
      BottomNavigatorModel(Icons.home),
      BottomNavigatorModel(Icons.notifications),
      BottomNavigatorModel(Icons.bookmark),
      BottomNavigatorModel(Icons.person)
    ];
  }

  List<BottomNavigationBarItem> toWidgets() {
    return _items
        .map((e) => BottomNavigationBarItem(icon: Icon(e.icon, size: e.iconSize), label: e.title))
        .toList();
  }
}
