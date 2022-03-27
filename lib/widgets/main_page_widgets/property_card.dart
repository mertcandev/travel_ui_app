// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:travel_ui_app/models/detail_model.dart';
import 'package:travel_ui_app/pages/details_page.dart';
import 'package:travel_ui_app/utilities.dart';

class PropertyCard extends StatelessWidget {
  DetailModel? detailModel;
  PropertyCard({
    this.detailModel,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailsPage(selectedModel: detailModel)));
      },
      child: Container(
        margin: EdgeInsets.only(top: 10, bottom: 10, right: 20),
        width: 300,
        decoration: BoxDecoration(
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
            ],
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 12, right: 12, left: 12, bottom: 15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
              height: 150,
              width: 280,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(detailModel!.imgPath!)),
              ),
            ),
            Spacer(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      detailModel!.name!,
                      style: GoogleFonts.varelaRound(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Utils.propertyNameColor),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Utils.mainOrange,
                          size: 16,
                        ),
                        Text(
                          detailModel!.location!,
                          style: GoogleFonts.varelaRound(
                            fontSize: 16,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 30,
                  width: 30,
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
                          colors: const [
                            Color(0xffF05A22),
                            Color(0xffF78E48)
                          ])),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white.withOpacity(0.7),
                    size: 15,
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
