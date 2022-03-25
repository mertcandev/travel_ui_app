// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'package:travel_ui_app/models/detail_model.dart';
import 'package:travel_ui_app/utilities.dart';
import 'package:travel_ui_app/widgets/detail_page_widgets/detail_image.dart';
import 'package:travel_ui_app/widgets/detail_page_widgets/detail_page_appbar.dart';
import 'package:travel_ui_app/widgets/detail_page_widgets/detail_review_button.dart';
import 'package:travel_ui_app/widgets/detail_page_widgets/details_bottom.dart';
import 'package:travel_ui_app/widgets/detail_page_widgets/details_more_images.dart';
import 'package:travel_ui_app/widgets/detail_page_widgets/details_text.dart';

class DetailsPage extends StatelessWidget {
  DetailModel? selectedModel;
  DetailsPage({this.selectedModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.iScreenBackground,
      body: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Column(
          children: [
            DetailPageAppBar(),
            SizedBox(height: 5),
            DetailImage(),
            SizedBox(height: 15),
            MoreImages(),
            SizedBox(height: 20),
            DetailAndReviewButtons(),
            SizedBox(height: 20),
            DetailsText(),
            Spacer(),
            DetailsBottom()
          ],
        ),
      ),
    );
  }
}
