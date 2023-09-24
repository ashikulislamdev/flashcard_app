import 'package:flutter/material.dart';

const deepMainColor = Color(0xff2c2c54);
const mainColor = Color(0xff40407a);
const normalMainColor = Color(0xff474787);
const skyBlueColor = Color(0xff83C8E4);
const successColor = Color(0xff2ed573);
const alerColor = Color(0xffff6348);
const normalWhiteColor = Color(0xfff1f2f6);
const whiteColor = Color(0xffffffff);

const defaultText =
    TextStyle(color: whiteColor, fontSize: 18, fontWeight: FontWeight.w600);

final appTheme = ThemeData(
  scaffoldBackgroundColor: normalMainColor,
  primaryColor: mainColor,
  useMaterial3: true,
  textTheme: const TextTheme(
    bodyMedium:
        TextStyle(color: whiteColor, fontSize: 18, fontWeight: FontWeight.w600),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: deepMainColor,
    centerTitle: true,
    titleTextStyle:
        TextStyle(color: whiteColor, fontSize: 20, fontWeight: FontWeight.bold),
  ),
);
