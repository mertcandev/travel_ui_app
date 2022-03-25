// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_ui_app/models/detail_model.dart';

class DetailImage extends StatelessWidget {
  DetailModel? selectedModel;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: MediaQuery.of(context).size.height * 0.40,
        width: MediaQuery.of(context).size.width * 0.85,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade400,
                offset: Offset(0, 0),
                blurRadius: 10,
                spreadRadius: 1)
          ],
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("assets/regnum.jpg")),
        ),
      ),
      Container(
        height: MediaQuery.of(context).size.height * 0.40,
        width: MediaQuery.of(context).size.width * 0.85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          gradient: LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.black.withOpacity(0.65),
              ],
              // ignore: prefer_const_literals_to_create_immutables
              stops: [
                0.7,
                1.0
              ]),
          // ignore: prefer_const_literals_to_create_immutables
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "Regnum Carya",
                style: GoogleFonts.varelaRound(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.white,
                    size: 20,
                  ),
                  Text(
                    "Serik",
                    style: GoogleFonts.varelaRound(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.normal),
                  ),
                  Spacer(),
                  Icon(
                    Icons.share,
                    size: 20,
                    color: Colors.white,
                  ),
                  SizedBox(width: 15),
                  Icon(
                    Icons.favorite_border,
                    size: 20,
                    color: Colors.white,
                  )
                ],
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
