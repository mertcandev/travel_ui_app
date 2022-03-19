// ignore_for_file: prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_ui_app/utilities.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Find Your Stay",
              style: GoogleFonts.varelaRound(
                  fontSize: 25,
                  color: Utils.searchExpColor,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(left: 20, right: 20),
              width: 280,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Utils.iScreenBackground,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade400,
                        offset: Offset(-4, 4),
                        blurRadius: 5,
                        spreadRadius: 1),
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(4, -4),
                        blurRadius: 5,
                        spreadRadius: 1)
                  ]),
              child: Row(
                children: [
                  Text("Search here...",
                      style: GoogleFonts.varelaRound(
                        fontSize: 14,
                        color: Utils.searchBarTextColor,
                      )),
                  Spacer(),
                  Icon(Icons.search, size: 12, color: Utils.searchBarIconColor),
                ],
              ),
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xffF05A22).withOpacity(0.3),
                        offset: Offset(-4, 4),
                        blurRadius: 5,
                        spreadRadius: 1),
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(4, -4),
                        blurRadius: 5,
                        spreadRadius: 1)
                  ],
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Color(0xffF05A22), Color(0xffF78E48)])),
              child: Icon(
                Icons.tune_rounded,
                color: Colors.white.withOpacity(0.7),
              ),
            )
          ],
        ),
      ],
    );
  }
}
