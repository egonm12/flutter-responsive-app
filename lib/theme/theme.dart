import 'package:flutter/material.dart';
import 'package:flutter_theme_extension_poc/theme/layout/spacings.dart';
import 'package:flutter_theme_extension_poc/theme/typography/text_styles.dart';

abstract class AppTheme {
  static ThemeData _baseTheme(
    AppTextStyles textStyles,
    AppSpacings spacings,
  ) {
    return ThemeData(
      extensions: [textStyles, spacings],
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

  static final small = _baseTheme(AppTextStyles.small, AppSpacings.small);
  static final medium = _baseTheme(AppTextStyles.medium, AppSpacings.medium);
  static final large = _baseTheme(AppTextStyles.large, AppSpacings.large);
}
