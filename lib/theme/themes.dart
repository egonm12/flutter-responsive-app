import 'package:flutter/material.dart';
import 'package:flutter_theme_extension_poc/theme/layout/spacings.dart';
import 'package:flutter_theme_extension_poc/theme/typography/text_styles.dart';

class AppThemes extends ThemeExtension<AppThemes> {
  const AppThemes({
    required this.appSpacings,
    required this.appTextStyles,
  });

  final AppSpacings appSpacings;
  final AppTextStyles appTextStyles;

  static const AppThemes small = AppThemes(
    appSpacings: AppSpacings.small,
    appTextStyles: AppTextStyles.small,
  );

  static const AppThemes medium = AppThemes(
    appSpacings: AppSpacings.medium,
    appTextStyles: AppTextStyles.medium,
  );

  static const AppThemes large = AppThemes(
    appSpacings: AppSpacings.large,
    appTextStyles: AppTextStyles.large,
  );

  @override
  ThemeExtension<AppThemes> copyWith({
    AppTextStyles? appTextStyles,
    AppSpacings? appSpacings,
  }) {
    return AppThemes(
      appTextStyles: appTextStyles ?? this.appTextStyles,
      appSpacings: appSpacings ?? this.appSpacings,
    );
  }

  @override
  ThemeExtension<AppThemes> lerp(
    ThemeExtension<AppThemes>? other,
    double t,
  ) {
    if (other is! AppThemes) {
      return this;
    }
    return AppThemes(
      appSpacings: other.appSpacings,
      appTextStyles: other.appTextStyles,
    );
  }
}
