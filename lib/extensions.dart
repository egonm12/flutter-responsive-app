import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_theme_extension_poc/theme/layout/spacings.dart';
import 'package:flutter_theme_extension_poc/theme/themes.dart';
import 'package:flutter_theme_extension_poc/theme/typography/text_styles.dart';

extension ThemeX on BuildContext {
  AppThemes get _appThemes => Theme.of(this).extension<AppThemes>()!;

  AppSpacings get spacings => _appThemes.appSpacings;
  AppTextStyles get textStyles => _appThemes.appTextStyles;
}
