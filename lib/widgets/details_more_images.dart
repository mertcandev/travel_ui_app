// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MoreImages extends StatelessWidget {
  const MoreImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage("assets/carya1.jpg"),
        ),
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage("assets/carya2.jpg"),
        ),
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage("assets/carya3.jpg"),
        ),
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/carya4.jpg"),
            ),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black.withOpacity(0.5)),
            ),
            Text(
              "10+",
              style: GoogleFonts.varelaRound(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w800),
            )
          ],
        )
      ],
    );
  }
}
