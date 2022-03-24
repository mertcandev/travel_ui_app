// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travel_ui_app/utilities.dart';

class DetailPageAppBar extends StatelessWidget {
  const DetailPageAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 38,
              height: 38,
              child: Center(
                  child: Icon(
                Icons.arrow_back,
              )),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Utils.iScreenBackground,
                // ignore: prefer_const_literals_to_create_immutables
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
              ),
            ),
          ),
          Text(
            "Details",
            style: TextStyle(
              fontSize: 18,
              color: Color(0xFF292931),
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            width: 38,
            height: 38,
            child: Center(
              child: Icon(
                Icons.more_horiz,
              ),
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
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
            ),
          ),
        ],
      ),
    );
  }
}
