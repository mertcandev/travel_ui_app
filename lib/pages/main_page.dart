import 'package:flutter/material.dart';

import 'package:travel_ui_app/utilities.dart';
import 'package:travel_ui_app/widgets/main_page_widgets/main_header.dart';
import 'package:travel_ui_app/widgets/main_page_widgets/our_properties.dart';
import 'package:travel_ui_app/widgets/main_page_widgets/places.dart';
import 'package:travel_ui_app/widgets/main_page_widgets/popular.dart';
import 'package:travel_ui_app/widgets/main_page_widgets/popular_properties.dart';
import 'package:travel_ui_app/widgets/main_page_widgets/properties.dart';
import 'package:travel_ui_app/widgets/main_page_widgets/search.dart';

import '../widgets/main_page_widgets/bottom_navbar.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Utils.iScreenBackground,
        body: Container(
          decoration: const BoxDecoration(),
          child: Column(
            children: [
              HeaderWidget(),
              const SizedBox(height: 20),
              const SearchBar(),
              const SizedBox(height: 15),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      const SizedBox(height: 15),
                      const Places(),
                      const SizedBox(height: 20),
                      const OurProperties(),
                      const Properties(),
                      const SizedBox(height: 10),
                      const Popular(),
                      PopularProperties()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavBar());
  }
}
