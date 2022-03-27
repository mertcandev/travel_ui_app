// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:travel_ui_app/models/detail_model.dart';

class DetailImage extends StatelessWidget {
  DetailModel? selectedModel;
  DetailImage({
    Key? key,
    this.selectedModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Hero(
        tag: selectedModel!.tag!,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.45,
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
                fit: BoxFit.cover, image: AssetImage(selectedModel!.imgPath!)),
          ),
        ),
      ),
      Container(
        height: MediaQuery.of(context).size.height * 0.45,
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
                selectedModel!.name!,
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
                    selectedModel!.location!,
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
