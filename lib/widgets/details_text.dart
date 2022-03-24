// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_ui_app/utilities.dart';

class DetailsText extends StatelessWidget {
  const DetailsText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: RichText(
          text: TextSpan(
              text:
                  'Ea non tempor et laborum proident laborum aliquip tempor aliquip excepteur aliqua culpa in eu. Dolore commodo eu velit commodo id id. Labore proident velit occaecat reprehenderit ullamco aliqua reprehenderit exercitation. nostrud mollit amet. Pariatur deserunt amet exercitation duis.',
              style: GoogleFonts.varelaRound(
                  fontSize: 12, color: Utils.propertyNameColor, height: 1.5),
              children: <TextSpan>[
                TextSpan(
                  text: ' Read More',
                  style: TextStyle(
                      color: Utils.mainOrange,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                )
              ]),
        ),
      ),
    );
  }
}
