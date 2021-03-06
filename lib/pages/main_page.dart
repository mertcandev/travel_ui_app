// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:travel_ui_app/utilities.dart';
import 'package:travel_ui_app/widgets/main_page_widgets/main_header.dart';
import 'package:travel_ui_app/widgets/main_page_widgets/our_properties.dart';
import 'package:travel_ui_app/widgets/main_page_widgets/places.dart';
import 'package:travel_ui_app/widgets/main_page_widgets/popular.dart';
import 'package:travel_ui_app/widgets/main_page_widgets/popular_properties.dart';
import 'package:travel_ui_app/widgets/main_page_widgets/properties.dart';
import 'package:travel_ui_app/widgets/main_page_widgets/search.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var index = 0;
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
            SizedBox(height: 15),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(height: 15),
                    Places(),
                    SizedBox(height: 20),
                    OurProperties(),
                    Properties(),
                    SizedBox(height: 10),
                    Popular(),
                    PopularProperties()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            this.index = index;
          });
        },
        currentIndex: index,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 10,
        /* selectedItemColor: Utils.mainOrange,
        unselectedItemColor: Utils.mainOrange.withOpacity(0.4), */
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 25,
                color: index == 0
                    ? Utils.mainOrange
                    : Utils.mainOrange.withOpacity(0.4),
              ),
              label: ""),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              size: 25,
              color: index == 1
                  ? Utils.mainOrange
                  : Utils.mainOrange.withOpacity(0.4),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark,
                size: 25,
                color: index == 2
                    ? Utils.mainOrange
                    : Utils.mainOrange.withOpacity(0.4),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 25,
                color: index == 3
                    ? Utils.mainOrange
                    : Utils.mainOrange.withOpacity(0.4),
              ),
              label: "")
        ],
      ),
    );
  }
}
