// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:travel_ui_app/models/detail_model.dart';
import 'package:travel_ui_app/widgets/main_page_widgets/property_card.dart';

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
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(left: 30),
        scrollDirection: Axis.horizontal,
        itemCount: details.length,
        itemBuilder: (context, index) {
          DetailModel currentDetail = details[index];

          return PropertyCard(
            detailModel: currentDetail,
          );
        },
      ),
    );
  }
}
