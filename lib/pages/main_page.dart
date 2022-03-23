// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:travel_ui_app/utilities.dart';
import 'package:travel_ui_app/widgets/main_header.dart';
import 'package:travel_ui_app/widgets/our_properties.dart';
import 'package:travel_ui_app/widgets/places.dart';
import 'package:travel_ui_app/widgets/popular.dart';
import 'package:travel_ui_app/widgets/properties.dart';
import 'package:travel_ui_app/widgets/search.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottomNavigationBar: BottomNavigationBar(items: []),
      backgroundColor: Utils.iScreenBackground,
      body: Container(
        decoration: BoxDecoration(),
        child: Column(
          children: [
            HeaderWidget(),
            SizedBox(height: 20),
            SearchBar(),
            SizedBox(height: 30),
            Places(),
            SizedBox(height: 30),
            OurProperties(),
            SizedBox(height: 10),
            Properties(),
            SizedBox(height: 20),
            Popular()
          ],
        ),
      ),
    );
  }
}
