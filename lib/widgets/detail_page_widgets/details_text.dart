// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:travel_ui_app/models/detail_model.dart';
import 'package:travel_ui_app/utilities.dart';

class DetailsText extends StatelessWidget {
  DetailModel? selectedModel;

  DetailsText({
    Key? key,
    this.selectedModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: RichText(
          text: TextSpan(
              text: selectedModel!.description!,
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
