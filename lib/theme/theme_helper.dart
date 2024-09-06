import 'dart:ui';
import 'package:flutter/material.dart';
import '../core/app_export.dart';

LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.
// ignore_for_file: must_be_immutable
class ThemeHelper {
  // The current app theme
  final _appTheme = PrefUtils().getThemeData();

  // A map of custom color themes supported by the app
  final Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

  // A map of color schemes supported by the app
  final Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.blue700,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 6,
        space: 6,
        color: appTheme.blueGray900,
      ),
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 16.fSize,
          fontFamily: 'Kinetika',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 14.fSize,
          fontFamily: 'Kinetika',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 8.fSize,
          fontFamily: 'Kinetika',
          fontWeight: FontWeight.w400,
        ),
        labelLarge: TextStyle(
          color: appTheme.gray500,
          fontSize: 12.fSize,
          fontFamily: 'Visby Round CF',
          fontWeight: FontWeight.w600,
        ),
        labelMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 11.fSize,
          fontFamily: 'Visby Round CF',
          fontWeight: FontWeight.w500,
        ),
        labelSmall: TextStyle(
          color: appTheme.gray500,
          fontSize: 9.fSize,
          fontFamily: 'Visby Round CF',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 22.fSize,
          fontFamily: 'Kinetika',
          fontWeight: FontWeight.w400,
        ),
        titleMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: appTheme.whiteA700.withOpacity(0.5),
          fontSize: 14.fSize,
          fontFamily: 'Visby Round CF',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = const ColorScheme.light();
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
  // Black
  Color get black900 => const Color(0XFF000000);
  Color get primarycolor => const Color(0XFF252a30);
  // Blue
  Color get blue700 => const Color(0XFF2881B3);
  Color get blue70001 => const Color(0XFF2881B4);

  // BlueGray
  Color get blueGray100 => const Color(0XFFD3D3D3);
  Color get blueGray10001 => const Color(0XFFCED4DA);
  Color get blueGray10002 => const Color(0XFFC9CACD);
  Color get blueGray10066 => const Color(0X66CFCFCF);
  Color get blueGray200 => const Color(0XFFACB0BC);
  Color get blueGray400 => const Color(0XFF84878B);
  Color get blueGray40001 => const Color(0XFF888888);
  Color get blueGray700 => const Color(0XFF4F5C5D);
  Color get blueGray800 => const Color(0XFF3D4749);
  Color get blueGray80001 => const Color(0XFF454C4E);
  Color get blueGray80002 => const Color(0XFF3B4149);
  Color get blueGray80003 => const Color(0XFF3D4649);
  Color get blueGray900 => const Color(0XFF333A3C);
  Color get blueGray90000 => const Color(0X00272F30);
  Color get blueGray90001 => const Color(0XFF2C3136);
  Color get secondarycolor => const Color(0XFF2F353D);
  Color get blueGray90003 => const Color(0XFF2B2B2B);
  Color get blueGray90004 => const Color(0XFF252A30);

  // Cyan
  Color get cyan600 => const Color(0XFF009DC4);
  Color get cyan60001 => const Color(0XFF00ADB5);
  Color get cyan700 => const Color(0XFF03A5AD);

  // Gray
  Color get gray200 => const Color(0XFFEEEEEE);
  Color get gray300 => const Color(0XFFDEDAD5);
  Color get gray500 => const Color(0XFFA0A3AD);
  Color get gray50001 => const Color(0XFF8E939A);
  Color get gray50002 => const Color(0XFF979A9E);
  Color get gray700 => const Color(0XFF666666);
  Color get gray800 => const Color(0XFF423B34);
  Color get gray900 => const Color(0XFF21252B);
  Color get gray90001 => const Color(0XFF15181B);
  Color get gray90002 => const Color(0XFF161616);

  // GrayBf
  Color get gray900Bf => const Color(0XBF161F1F);

  // Green
  Color get green500 => const Color(0XFF28B368);

  // Indigo
  Color get indigoA400 => const Color(0XFF4050DD);

  // Pink
  Color get pink900 => const Color(0XFF8D1B3D);

  // Red
  Color get red700 => const Color(0XFFB25B3F);
  Color get red70001 => const Color(0XFFCC4444);
  Color get red800 => const Color(0XFFDB161B);
  Color get red80001 => const Color(0XFFCE1126);
  Color get red900 => const Color(0XFFB32828);
  Color get red90001 => const Color(0XFFB42828);
  Color get redA200 => const Color(0XFFFC5D62);
  Color get redA20075 => const Color(0X75FC5C61);

  // Teal
  Color get teal900 => const Color(0XFF006C35);
  Color get tealA400 => const Color(0XFF22CAB8);

  // White
  Color get whiteA700 => const Color(0XFFFFFFFF);

  // Yellow
  Color get yellow500 => const Color(0XFFFFEB29);
  Color get yellow700 => const Color(0XFFFDC732);
  Color get yellow70033 => const Color(0X33FDC731);
  Color get yellowA700 => const Color(0XFFE2D00D);
  Color get yellowA70001 => const Color(0XFFF4DF08);
}
