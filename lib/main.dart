// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travel_ui_app/pages/splash_page.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (_) => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    )),
  );
}
