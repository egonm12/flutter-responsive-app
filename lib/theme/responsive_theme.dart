import 'package:flutter/material.dart';
import 'package:flutter_theme_extension_poc/theme/themes.dart';

class ResponsiveTheme {
  const ResponsiveTheme._();

  static final small = _baseTheme(AppThemes.small);
  static final medium = _baseTheme(AppThemes.medium);
  static final large = _baseTheme(AppThemes.large);

  static ThemeData _baseTheme(AppThemes appThemes) {
    final textStyles = appThemes.appTextStyles;
    final spacings = appThemes.appSpacings;

    return ThemeData(
      extensions: [appThemes],
      textTheme: TextTheme(
        headline1: textStyles.headline1,
        bodyText1: textStyles.bodyText1,
      ),
      appBarTheme: AppBarTheme(
        titleTextStyle: textStyles.headline1,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.all(spacings.m)),
        ),
      ),
    );
  }
}
