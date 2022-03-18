// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_ui_app/pages/introduction_screen.dart';
import 'package:travel_ui_app/utilities.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => IntroductionScreen()),
          (route) => false);
    });
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Utils.mainOrange,
          ),
          Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.airlines_rounded,
                      color: Colors.white, size: 50),
                  Text("travellify",
                      style: GoogleFonts.mavenPro(
                          textStyle: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)))
                ],
              )),
          Align(
            alignment: Alignment(0.0, 0.85),
            child: SizedBox(
              height: 50,
              width: 50,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                    Colors.white.withOpacity(0.8)),
                strokeWidth: 4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
