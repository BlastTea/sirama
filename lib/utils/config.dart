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
  static InputBorder outlinedBorder = OutlineInputBorder(
    borderRadius: const BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(
      color: greyColor.withOpacity(0.3),
    ),
  );

  static const focusBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(color: Color.fromRGBO(36, 46, 73, 100)),
  );

  static const errorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(
      color: Colors.red,
    ),
  );

  // static const primaryColor = Color.fromRGBO(139, 192, 248, 100);
  static const primaryColor = Color(0xFF8BC0F8);
  static const greyColor = Color(0xFF858585);

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

  static TextStyle textStyleTitleLarge = defaultStyle.copyWith(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color: fontColor,
  );

  static TextStyle textStyleTitleMedium = defaultStyle.copyWith(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    color: fontColor,
  );

  static TextStyle textStyleTitleSmall = defaultStyle.copyWith(
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
    color: fontColor,
  );

  static TextStyle textStyleBodyLarge = defaultStyle.copyWith(
    fontSize: 14.0,
    color: fontColor,
  );
  static TextStyle textStyleBodyMedium = defaultStyle.copyWith(
    fontSize: 12.0,
    color: fontColor,
    fontWeight: FontWeight.w500,
  );
}
