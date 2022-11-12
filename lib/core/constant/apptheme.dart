import 'package:ecommerceproject/core/constant/color.dart';
import 'package:flutter/material.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: "playfairdisplay",
  textTheme: const TextTheme(
    headline1: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 15, color: AppColor.black),
    headline2: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 26, color: AppColor.black),
    bodyText1: TextStyle(
        height: 2,
        color: AppColor.grey,
        fontWeight: FontWeight.w400,
        fontSize: 15),
    bodyText2: TextStyle(
        height: 2,
        color: AppColor.grey,
        fontSize: 14),
  ),
  primarySwatch: Colors.blue,
);
ThemeData themeArabic = ThemeData(
  fontFamily: "cairo",
  textTheme: const TextTheme(
    headline1: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 15, color: AppColor.black),
    headline2: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 26, color: AppColor.black),
    bodyText1: TextStyle(
        height: 2,
        color: AppColor.grey,
        fontWeight: FontWeight.w400,
        fontSize: 15),
    bodyText2: TextStyle(
        height: 2,
        color: AppColor.grey,
        fontSize: 14),
  ),
  primarySwatch: Colors.blue,
);