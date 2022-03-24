// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:travel_ui_app/utilities.dart';
import 'package:travel_ui_app/widgets/detail_image.dart';
import 'package:travel_ui_app/widgets/detail_page_appbar.dart';
import 'package:travel_ui_app/widgets/details_more_images.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.iScreenBackground,
      body: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Column(
          children: [
            DetailPageAppBar(),
            SizedBox(height: 10),
            DetailImage(),
            SizedBox(height: 15),
            MoreImages()
          ],
        ),
      ),
    );
  }
}
