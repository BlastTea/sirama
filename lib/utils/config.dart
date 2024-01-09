import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Config {
  static MediaQueryData? mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;

  // width and heigh init
  void init(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    screenWidth = mediaQueryData!.size.width;
    screenHeight = mediaQueryData!.size.height;
  }

  static get widthSize => screenWidth;

  static get heightSize => screenHeight;

  static const appName = 'sirama';

  // define spacing height
  static const spaceSmall = SizedBox(
    height: 25,
  );
  static final spaceMedium = SizedBox(
    height: screenHeight! * 0.05,
  );
  static final spaceBig = SizedBox(
    height: screenHeight! * 0.08,
  );

  // text form field
  static const outlinedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
  );

  static const focusBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    borderSide: BorderSide(color: Color.fromRGBO(36, 46, 73, 100)),
  );

  static const errorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    borderSide: BorderSide(
      color: Colors.red,
    ),
  );

  // static const primaryColor = Color.fromRGBO(139, 192, 248, 100);
  static const primaryColor = Color(0xFF8BC0F8);

  static const fontColor = Color(0xFF242E49);

  static TextStyle defaultStyle = GoogleFonts.plusJakartaSans();

  static TextStyle textStyleHeadlineLarge = defaultStyle.copyWith(
    fontSize: 30.0,
    fontWeight: FontWeight.w800,
    color: fontColor,
  );

  static TextStyle textStyleHeadlineMedium = defaultStyle.copyWith(
    fontSize: 26.0,
    fontWeight: FontWeight.w800,
    color: fontColor,
  );

  static TextStyle textStyleHeadlineSmall = defaultStyle.copyWith(
    fontSize: 22.0,
    fontWeight: FontWeight.w600,
    color: fontColor,
  );
}
