// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:travel_ui_app/models/intro_models.dart';
import 'package:travel_ui_app/pages/main_page.dart';
import 'package:travel_ui_app/utilities.dart';

class IntroductionScreen extends StatelessWidget {
  IntroModel? introModel;
  IntroductionScreen({
    Key? key,
    this.introModel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Center(
        child: Center(
            child: Container(
          color: Utils.iScreenBackground,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(Utils.image, height: 300, width: 300),
              SizedBox(height: 40),
              Text(
                Utils.title,
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
                  Utils.description,
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
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => MainPage()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Utils.mainOrange,
                      boxShadow: [
                        BoxShadow(
                            color:
                                Color.fromRGBO(240, 90, 34, 1).withOpacity(0.2),
                            blurRadius: 20,
                            spreadRadius: 10,
                            offset: Offset(0.0, 0))
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
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
