// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_ui_app/utilities.dart';

class Places extends StatelessWidget {
  const Places({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/india.jpg"),
            ),
            SizedBox(height: 10),
            Text("India",
                style: GoogleFonts.varelaRound(
                    fontSize: 14,
                    color: Utils.searchBarTextColor,
                    fontWeight: FontWeight.w900))
          ],
        ),
        Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/newyork.jpg"),
            ),
            SizedBox(height: 10),
            Text("New York",
                style: GoogleFonts.varelaRound(
                    fontSize: 14,
                    color: Utils.searchBarTextColor,
                    fontWeight: FontWeight.w900))
          ],
        ),
        Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/australia.jpg"),
            ),
            SizedBox(height: 10),
            Text("Australia",
                style: GoogleFonts.varelaRound(
                    fontSize: 14,
                    color: Utils.searchBarTextColor,
                    fontWeight: FontWeight.w900))
          ],
        ),
        Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/poland.jpg"),
            ),
            SizedBox(height: 10),
            Text("Poland",
                style: GoogleFonts.varelaRound(
                    fontSize: 14,
                    color: Utils.searchBarTextColor,
                    fontWeight: FontWeight.w900))
          ],
        )
      ],
    );
  }
}
