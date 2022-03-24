// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_ui_app/pages/details_page.dart';
import 'package:travel_ui_app/utilities.dart';

const double heightRatio = 0.20;
const double widthRatio = 0.70;
const double photoHeigtRatio = heightRatio * 0.9;
const double photoWidthRatio = widthRatio * 0.9;

class Properties extends StatelessWidget {
  const Properties({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(left: 30),
        scrollDirection: Axis.horizontal,
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => DetailsPage()));
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
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
                padding: const EdgeInsets.only(
                    top: 12, right: 12, left: 12, bottom: 15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 150,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/regnum.jpg")),
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
                                "Regnum Carya",
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
                                    "Serik",
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
                                    colors: [
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
          ),
          SizedBox(width: 20),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            width: 290,
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
              padding: const EdgeInsets.only(
                  top: 12, right: 12, left: 12, bottom: 15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 150,
                      width: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/mahal.jpg")),
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
                              "Villa Mahal",
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
                                  "Kaş",
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
                                  colors: [
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
          SizedBox(width: 20),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
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
              padding: const EdgeInsets.only(
                  top: 12, right: 12, left: 12, bottom: 15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 150,
                      width: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/rixos.jpg")),
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
                              "Rixos Antalya",
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
                                  "Antalya",
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
                                  colors: [
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
          SizedBox(width: 20),
        ],
      ),
    );
  }
}
