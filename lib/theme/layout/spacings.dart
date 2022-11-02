import 'dart:ui';

import 'package:flutter/material.dart';

@immutable
class AppSpacings extends ThemeExtension<AppSpacings> {
  const AppSpacings({
    required this.s,
    required this.m,
    required this.l,
  });

  final double s;
  final double m;
  final double l;

  static const small = AppSpacings(s: 4.0, m: 12.0, l: 20.0);

  static const medium = AppSpacings(s: 12.0, m: 20.0, l: 28.0);

  static const large = AppSpacings(s: 20.0, m: 28.0, l: 36.0);

  @override
  ThemeExtension<AppSpacings> copyWith({
    double? s,
    double? m,
    double? l,
  }) {
    return AppSpacings(
      s: s ?? this.s,
      m: m ?? this.m,
      l: l ?? this.l,
    );
  }

  @override
  ThemeExtension<AppSpacings> lerp(
    ThemeExtension<AppSpacings>? other,
    double t,
  ) {
    if (other is! AppSpacings) {
      return this;
    }
    return AppSpacings(
      s: lerpDouble(s, other.s, t)!,
      m: lerpDouble(m, other.m, t)!,
      l: lerpDouble(l, other.l, t)!,
    );
  }
}
