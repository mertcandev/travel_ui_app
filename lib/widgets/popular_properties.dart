// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_ui_app/utilities.dart';

class PopularProperties extends StatelessWidget {
  const PopularProperties({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(left: 30),
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            width: 320,
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
              padding: EdgeInsets.all(12),
              child: Row(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/mahal.jpg")),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        child: Column(
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
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02),
                      Row(
                        children: [
                          SizedBox(
                            width: 65,
                            child: Stack(
                              children: [
                                Positioned(
                                  child: SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage("assets/ali.jpg"),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 12,
                                  child: SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage("assets/veli.jpg"),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 24,
                                  child: SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage("assets/deli.jpg"),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 36,
                                  child: SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage("assets/mahmut.jpg"),
                                    ),
                                  ),
                                ),
                                Positioned(
                                    left: 39,
                                    top: 6,
                                    child: Text(
                                      "49+",
                                      style: GoogleFonts.varelaRound(
                                          color: Colors.white, fontSize: 10),
                                    )),
                              ],
                            ),
                          ),
                          Text("52 Reviews",
                              style: GoogleFonts.varelaRound(
                                  fontSize: 12, color: Utils.propertyNameColor))
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ,
        Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            width: 320,
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
              padding: EdgeInsets.all(12),
              child: Row(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/mahal.jpg")),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        child: Column(
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
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02),
                      Row(
                        children: [
                          SizedBox(
                            width: 65,
                            child: Stack(
                              children: [
                                Positioned(
                                  child: SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage("assets/ali.jpg"),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 12,
                                  child: SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage("assets/veli.jpg"),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 24,
                                  child: SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage("assets/deli.jpg"),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 36,
                                  child: SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage("assets/mahmut.jpg"),
                                    ),
                                  ),
                                ),
                                Positioned(
                                    left: 39,
                                    top: 6,
                                    child: Text(
                                      "49+",
                                      style: GoogleFonts.varelaRound(
                                          color: Colors.white, fontSize: 10),
                                    )),
                              ],
                            ),
                          ),
                          Text("52 Reviews",
                              style: GoogleFonts.varelaRound(
                                  fontSize: 12, color: Utils.propertyNameColor))
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
