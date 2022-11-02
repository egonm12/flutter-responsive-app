import 'package:flutter/material.dart';

@immutable
class AppTextStyles extends ThemeExtension<AppTextStyles> {
  const AppTextStyles({
    required this.headline1,
    required this.bodyText1,
  });

  final TextStyle headline1;
  final TextStyle bodyText1;

  static const small = AppTextStyles(
    headline1: TextStyle(fontSize: 20.0),
    bodyText1: TextStyle(fontSize: 16.0),
  );

  static const medium = AppTextStyles(
    headline1: TextStyle(fontSize: 24.0),
    bodyText1: TextStyle(fontSize: 18.0),
  );

  static const large = AppTextStyles(
    headline1: TextStyle(fontSize: 32.0),
    bodyText1: TextStyle(fontSize: 20.0),
  );

  @override
  ThemeExtension<AppTextStyles> copyWith({
    TextStyle? headline1,
    TextStyle? bodyText1,
  }) {
    return AppTextStyles(
      headline1: headline1 ?? this.headline1,
      bodyText1: bodyText1 ?? this.bodyText1,
    );
  }

  @override
  ThemeExtension<AppTextStyles> lerp(
    ThemeExtension<AppTextStyles>? other,
    double t,
  ) {
    if (other is! AppTextStyles) {
      return this;
    }
    return AppTextStyles(
      headline1: TextStyle.lerp(headline1, other.headline1, t)!,
      bodyText1: TextStyle.lerp(bodyText1, other.bodyText1, t)!,
    );
  }
}
