import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_ui_app/utilities.dart';

class Popular extends StatelessWidget {
  const Popular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30, left: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Popular",
            style: GoogleFonts.varelaRound(
                fontSize: 30,
                color: Utils.searchExpColor,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "View All",
            style:
                GoogleFonts.varelaRound(fontSize: 16, color: Utils.mainOrange),
          )
        ],
      ),
    );
  }
}
