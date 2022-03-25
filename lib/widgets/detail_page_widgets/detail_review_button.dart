// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_ui_app/utilities.dart';

class DetailAndReviewButtons extends StatelessWidget {
  const DetailAndReviewButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Center(
              child: Text(
                "Detail",
                style: GoogleFonts.varelaRound(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              ),
            ),
            margin: EdgeInsets.only(right: 10),
            width: 75,
            height: 30,
            decoration: BoxDecoration(
              color: Utils.mainOrange,
              borderRadius: BorderRadius.all(Radius.circular(7)),
              boxShadow: [
                BoxShadow(
                    offset: Offset(4, 3),
                    blurRadius: 9,
                    color: Utils.mainOrange.withOpacity(0.3))
              ],
            ),
          ),
          Container(
            child: Center(
              child: Text(
                "Review",
                style: GoogleFonts.varelaRound(
                    fontSize: 13, fontWeight: FontWeight.bold),
              ),
            ),
            width: 75,
            height: 30,
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.all(Radius.circular(7)),
              border: Border.all(color: Color(0xFFE0E0E0), width: 0.5),
            ),
          )
        ],
      ),
    );
  }
}
