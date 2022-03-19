// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travel_ui_app/utilities.dart';
import 'package:travel_ui_app/widgets/main_header.dart';
import 'package:travel_ui_app/widgets/our_properties.dart';
import 'package:travel_ui_app/widgets/places.dart';
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
      backgroundColor: Utils.iScreenBackground,
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
        child: Container(
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
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
