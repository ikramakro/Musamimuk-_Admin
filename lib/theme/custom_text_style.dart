import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get corben {
    return copyWith(
      fontFamily: 'Corben',
    );
  }

  TextStyle get workSans {
    return copyWith(
      fontFamily: 'Work Sans',
    );
  }

  TextStyle get sourceSansPro {
    return copyWith(
      fontFamily: 'Source Sans Pro',
    );
  }

  TextStyle get kinetika {
    return copyWith(
      fontFamily: 'Kinetika',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get visbyRoundCF {
    return copyWith(
      fontFamily: 'Visby Round CF',
    );
  }

  TextStyle get aBeeZee {
    return copyWith(
      fontFamily: 'ABeeZee',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // A text style
  static get aBeeZeeWhiteA700 => TextStyle(
        color: appTheme.whiteA700,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).aBeeZee;

  // Body text style
  static get bodyLargeGray50002 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray50002,
      );

  static get bodyLargeSourceSansProGray700 =>
      theme.textTheme.bodyLarge!.sourceSansPro.copyWith(
        color: appTheme.gray700,
        fontSize: 18.fSize,
      );

  static get bodyLargeWhiteA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.5),
      );

  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );

  static get bodyMediumBluegray200 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray200,
        fontSize: 13.fSize,
      );

  static get bodyMediumBluegray20013 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray200,
        fontSize: 13.fSize,
      );

  static get bodyMediumGray50002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray50002,
      );

  static get bodyMediumVisbyRoundCFBluegray100 =>
      theme.textTheme.bodyMedium!.visbyRoundCF.copyWith(
        color: appTheme.blueGray100,
      );

  static get bodyMediumVisbyRoundCFBluegray200 =>
      theme.textTheme.bodyMedium!.visbyRoundCF.copyWith(
        color: appTheme.blueGray200,
        fontSize: 13.fSize,
      );

  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.6),
        fontSize: 13.fSize,
      );

  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );

  static get bodySmall10_1 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );

  static get bodySmall11 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 11.fSize,
      );

  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );

  static get bodySmall12_1 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );

  static get bodySmall12_2 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );

  static get bodySmall9 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 9.fSize,
      );

  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontSize: 12.fSize,
      );

  static get bodySmallBlack90012 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontSize: 12.fSize,
      );

  static get bodySmallCorben => theme.textTheme.bodySmall!.corben;

  static get bodySmallGray500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
        fontSize: 10.fSize,
      );

  static get bodySmallGray50011 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
        fontSize: 11.fSize,
      );

  static get bodySmallPoppinsWhiteA700 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.whiteA700.withOpacity(0.7),
        fontSize: 10.fSize,
        fontWeight: FontWeight.w300,
      );

  static get bodySmallPoppinsWhiteA70012 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.whiteA700.withOpacity(0.5),
        fontSize: 12.fSize,
      );

  static get bodySmallPoppinsWhiteA700Light =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.whiteA700.withOpacity(0.7),
        fontSize: 11.fSize,
        fontWeight: FontWeight.w300,
      );

  static get bodySmallVisbyRoundCF =>
      theme.textTheme.bodySmall!.visbyRoundCF.copyWith(
        fontSize: 12.fSize,
      );

  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.5),
        fontSize: 12.fSize,
      );

  static get bodySmallWhiteA70011 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.5),
        fontSize: 11.fSize,
      );

  static get bodySmallWhiteA700_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.5),
      );

  static get bodySmallYellowA70001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.yellowA70001,
        fontSize: 12.fSize,
      );

  // Kinetika text style
  static get kinetikaWhiteA700 => TextStyle(
        color: appTheme.whiteA700,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).kinetika;

  // Label text style
  static get labelLargePoppinsWhiteA700 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );

  static get labelLargePoppinsWhiteA70013 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontSize: 13.fSize,
      );

  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.5),
        fontSize: 13.fSize,
      );

  static get labelMediumPoppins =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        fontWeight: FontWeight.w700,
      );

  static get labelSmallYellow500 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.yellow500,
        fontSize: 8.fSize,
      );

  // Poppins text style
  static get poppinsBluegray90004 => TextStyle(
        color: appTheme.blueGray90004,
        fontSize: 8.fSize,
        fontWeight: FontWeight.w500,
      ).poppins;

  static get poppinsGray50001 => TextStyle(
        color: appTheme.gray50001,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w500,
      ).poppins;

  static get poppinsWhiteA700 => TextStyle(
        color: appTheme.whiteA700,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w500,
      ).poppins;

  static get poppinsWhiteA700Light => TextStyle(
        color: appTheme.whiteA700.withOpacity(0.7),
        fontSize: 5.fSize,
        fontWeight: FontWeight.w300,
      ).poppins;

  static get poppinsWhiteA700Medium => TextStyle(
        color: appTheme.whiteA700,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w500,
      ).poppins;

  // Title text style
  static get titleLargePoppins => theme.textTheme.titleLarge!.poppins.copyWith(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );

  static get titleLargeSourceSansProBluegray90003 =>
      theme.textTheme.titleLarge!.sourceSansPro.copyWith(
        color: appTheme.blueGray90003,
        fontWeight: FontWeight.w600,
      );

  static get titleLargeVisbyRoundCF =>
      theme.textTheme.titleLarge!.visbyRoundCF.copyWith(
        fontWeight: FontWeight.w700,
      );

  static get titleLargeVisbyRoundCFBold =>
      theme.textTheme.titleLarge!.visbyRoundCF.copyWith(
        fontSize: 23.fSize,
        fontWeight: FontWeight.w700,
      );

  static get titleLargeWorkSansYellow500 =>
      theme.textTheme.titleLarge!.workSans.copyWith(
        color: appTheme.yellow500,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );

  static get titleMediumSourceSansProGray300 =>
      theme.textTheme.titleMedium!.sourceSansPro.copyWith(
        color: appTheme.gray300,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );

  static get titleMediumSourceSansProGray800 =>
      theme.textTheme.titleMedium!.sourceSansPro.copyWith(
        color: appTheme.gray800,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );

  static get titleMediumVisbyRoundCF =>
      theme.textTheme.titleMedium!.visbyRoundCF.copyWith(
        fontSize: 17.fSize,
      );

  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );

  static get titleSmallBluegray10002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray10002,
        fontSize: 15.fSize,
      );

  static get titleSmallCyan60001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.cyan60001,
        fontWeight: FontWeight.w600,
      );

  static get titleSmallCyan60001SemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.cyan60001,
        fontWeight: FontWeight.w600,
      );

  static get titleSmallGray50002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50002,
      );

  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );

  static get titleSmallWhiteA700SemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );

  static get titleSmallYellow500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.yellow500,
        fontWeight: FontWeight.w600,
      );

  // Visby text style
  static get visbyRoundCFWhiteA700 => TextStyle(
        color: appTheme.whiteA700,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w600,
      ).visbyRoundCF;
}
