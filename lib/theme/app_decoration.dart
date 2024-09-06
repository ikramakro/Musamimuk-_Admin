import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900,
      );
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue70001,
      );
  static BoxDecoration get fillBlue700 => BoxDecoration(
        color: appTheme.blue700,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray90004,
      );
  static BoxDecoration get fillBluegray80002 => BoxDecoration(
        color: appTheme.blueGray80002,
      );
  static BoxDecoration get fillBluegray90002 => BoxDecoration(
        color: appTheme.secondarycolor,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray90002,
      );
  static BoxDecoration get fillGrayBf => BoxDecoration(
        color: appTheme.gray900Bf,
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green500,
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red90001,
      );
  static BoxDecoration get fillRed900 => BoxDecoration(
        color: appTheme.red900,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.06),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.03),
      );
  static BoxDecoration get fillWhiteA7001 => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get fillYellow => BoxDecoration(
        color: appTheme.yellow500,
      );
  static BoxDecoration get fillYellowA => BoxDecoration(
        color: appTheme.yellowA70001,
      );
  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.secondarycolor,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.03),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              8.34,
            ),
          )
        ],
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: appTheme.secondarycolor,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.03),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              8,
            ),
          )
        ],
      );
  static BoxDecoration get outlineBlack9001 => BoxDecoration(
        color: appTheme.secondarycolor,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.03),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              7.6,
            ),
          )
        ],
      );
  static BoxDecoration get outlineBlack9002 => BoxDecoration(
        color: appTheme.secondarycolor,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.03),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              8.86,
            ),
          )
        ],
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration();
  static BoxDecoration get outlineCyan => BoxDecoration(
        border: Border.all(
          color: appTheme.cyan700,
          width: 1.53.h,
        ),
      );
  static BoxDecoration get outlineYellowA => BoxDecoration(
        border: Border.all(
          color: appTheme.yellowA700,
          width: 0.5.h,
          strokeAlign: BorderSide.strokeAlignCenter,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder8 => BorderRadius.circular(
        8.h,
      );
  // Rounded borders
  static BorderRadius get roundedBorder14 => BorderRadius.circular(
        5.h,
      );
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        6.h,
      );
  static BorderRadius get roundedBorder64 => BorderRadius.circular(
        64.h,
      );
}
