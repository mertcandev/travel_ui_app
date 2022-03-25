// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_ui_app/utilities.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, right: 30, left: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            textBaseline: TextBaseline.ideographic,
            children: [
              Material(
                shadowColor: Utils.mainOrange.withOpacity(0.5),
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/mimi.jpg"),
                ),
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello, ",
                    style: GoogleFonts.varelaRound(
                        fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "Mimi! ",
                    style: GoogleFonts.varelaRound(
                        fontSize: 18, fontWeight: FontWeight.w700),
                  )
                ],
              )
            ],
          ),
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
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
                ]),
            child: Center(
                child: Icon(
              Icons.notifications_none_outlined,
              size: 22,
            )),
          )
        ],
      ),
    );
  }
}
