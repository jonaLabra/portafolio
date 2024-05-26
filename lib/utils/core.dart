import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Colors
Color? primary = Colors.red;
Color? secondary = Colors.blue[900];
Color? white = Colors.white;
Color? black = Colors.black;
Color? grey = Colors.grey;
Color? blue = Colors.blue;
Color? yellow = Colors.yellow;
Color? orange = Colors.orange;
Color? green = Colors.green;
Color? pink = Colors.pink;
Color? transparent = Colors.transparent;

Color? grey350 = Colors.grey[350];
Color? greenAccent700 = Colors.greenAccent[700];
Color? black87 = Colors.black87;
Color? black54 = Colors.black54;

const List<Color> kgTitle = [kcTitleGradientLeft, kcTitleGradientRight];

const List<Color> kgSubTitle = [
  kcSubTitleGradientLeft,
  kcSubTitleGradientRight
];

const Color kcSubTitleGradientLeft = Color.fromARGB(255, 23, 24, 23);
const Color kcSubTitleGradientRight = Color.fromARGB(255, 168, 163, 163);
const Color kcTitleGradientLeft = Color.fromARGB(255, 168, 163, 163);
const Color kcTitleGradientRight = Color.fromARGB(255, 23, 24, 23);

//Strings
const String name = 'Jonathan Labra Moyado';
const String profession = 'Ing. Sistemas Computacionales';
const String age = '28';
const String aboutMe = 'About Me';
const String projects = 'Projects';

TextStyle get ktsTitleText => GoogleFonts.openSans(
      fontSize: 80,
      height: 0.95,
      fontWeight: FontWeight.w800,
    );

TextStyle get ktsBodyRegular => GoogleFonts.openSans(
      fontSize: 15,
    );

TextStyle get ktsBodyLarge => GoogleFonts.openSans(
      fontSize: 20,
    );

//Widgets
Widget spacedDivider = const Column(
  children: <Widget>[
    verticalSpaceMedium,
    Divider(color: Colors.blueGrey, height: 5.0),
    verticalSpaceMedium,
  ],
);

Widget verticalSpace(double height) => SizedBox(height: height);

const Widget horizontalSpaceTiny = SizedBox(width: _tinySize);
const Widget horizontalSpaceSmall = SizedBox(width: _smallSize);
const Widget horizontalSpaceMedium = SizedBox(width: _mediumSize);
const Widget horizontalSpaceLarge = SizedBox(width: _largeSize);

const Widget verticalSpaceTiny = SizedBox(height: _tinySize);
const Widget verticalSpaceSmall = SizedBox(height: _smallSize);
const Widget verticalSpaceMedium = SizedBox(height: _mediumSize);
const Widget verticalSpaceLarge = SizedBox(height: _largeSize);
const Widget verticalSpaceMassive = SizedBox(height: _massiveSize);

//Sizes

const double _tinySize = 5.0;
const double _smallSize = 10.0;
const double _mediumSize = 25.0;
const double _largeSize = 50.0;
const double _massiveSize = 120.0;

/// The max width the content can ever take up on the screen
const double kdDesktopMaxContentWidth = 1150;

// The max height the homeview will take up
const double kdDesktopMaxContentHeight = 750;

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

double screenHeightFraction(BuildContext context,
        {int dividedBy = 1, double offsetBy = 0, double max = 3000}) =>
    min((screenHeight(context) - offsetBy) / dividedBy, max);

double screenWidthFraction(BuildContext context,
        {int dividedBy = 1, double offsetBy = 0, double max = 3000}) =>
    min((screenWidth(context) - offsetBy) / dividedBy, max);

double halfScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 2);

double thirdScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 3);

double quarterScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 4);

double getResponsiveHorizontalSpaceMedium(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 10);
double getResponsiveSmallFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 14, max: 15);

double getResponsiveMediumFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 16, max: 17);

double getResponsiveLargeFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 21, max: 31);

double getResponsiveExtraLargeFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 25);

double getResponsiveMassiveFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 30);

double getResponsiveFontSize(BuildContext context,
    {double? fontSize, double? max}) {
  max ??= 100;

  var responsiveSize = min(
      screenWidthFraction(context, dividedBy: 10) * ((fontSize ?? 100) / 100),
      max);

  return responsiveSize;
}

//URL
const String urlLinkedIn = 'https://www.linkedin.com/in/jonathan-labra/';
const String ulrGitHub = 'https://github.com/jonaLabra?tab=repositories';
const String ulrCV =
    'https://firebasestorage.googleapis.com/v0/b/flutter-b13a9.appspot.com/o/vanglarWP%2FCV-JONATHAN-LABRA-MOYADO.pdf?alt=media&token=6d3ce83f-1ff3-4a38-ad99-84a7f942fb99';
