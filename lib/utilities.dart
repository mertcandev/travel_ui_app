import 'package:flutter/material.dart';

class Utils {
  static const Color mainOrange = Color(0xFFF05A22);
  static const Color iScreenBackground = Color(0xffF5F5F5);
  static const Color iHeaderTextColor = Color(0xff2D2D2D);
  static const Color iBodyTextColor = Color(0xff595959);
  static const Color iIndicatorInactiveColor = Color(0xffF9C5B9);
  static const Color searchExpColor = Color(0xff2D2D2D);
  static const Color searchBarTextColor = Color(0xff595959);
  static const Color searchBarIconColor = Color(0xff263238);
  static const Color propertyNameColor = Color(0xff292931);
  static BoxShadow genericBoxShadow = BoxShadow(
      color: Utils.mainOrange.withOpacity(0.2),
      blurRadius: 7,
      spreadRadius: 1,
      offset: const Offset(0, 0));
}
