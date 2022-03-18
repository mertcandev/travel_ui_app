// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_ui_app/utilities.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
            child: Container(
          color: Utils.iScreenBackground,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/trip1.png", height: 300, width: 300),
              SizedBox(height: 40),
              Text(
                "Discover a Hotel & Resort\nto Book a Suitable Room",
                textAlign: TextAlign.center,
                style: GoogleFonts.varelaRound(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Utils.iHeaderTextColor),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: Text(
                  "The hotel and resort business is one of the best and loyal business in the global market. We are the agency that helps to book you a good room in a suitable palace at a reasonable price.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.varelaRound(
                      fontSize: 14, color: Utils.iBodyTextColor),
                ),
              ),
              SizedBox(height: 25),
              SmoothPageIndicator(
                controller: PageController(initialPage: 0),
                count: 4,
                effect: ExpandingDotsEffect(
                    activeDotColor: Utils.mainOrange,
                    dotColor: Utils.iIndicatorInactiveColor,
                    dotHeight: 7,
                    expansionFactor: 1.4),
              ),
              SizedBox(height: 80),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Utils.mainOrange,
                    boxShadow: [
                      BoxShadow(
                          color: Utils.mainOrange.withOpacity(0.2),
                          blurRadius: 10,
                          spreadRadius: 10,
                          offset: Offset(0.0, 5))
                    ]),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Get Started",
                        style: GoogleFonts.varelaRound(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.w800),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      Icon(
                        Icons.arrow_forward_rounded,
                        color: Colors.white,
                        size: 24,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
