import 'package:flutter/material.dart';
import 'package:flutter_theme_extension_poc/theme/layout/breakpoints.dart';
import 'package:flutter_theme_extension_poc/widgets/home.dart';

class ResponsiveApp extends StatelessWidget {
  const ResponsiveApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = ThemeData();

    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth <= AppBreakpoints.small) {
        return CustomMaterialApp(themeData);
      } else if (constraints.maxWidth <= AppBreakpoints.medium) {
        return CustomMaterialApp(themeData);
      }
      return CustomMaterialApp(themeData);
    });
  }
}

class CustomMaterialApp extends StatelessWidget {
  const CustomMaterialApp(
    this.themeData, {
    super.key,
  });

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: const HomeScreen(),
    );
  }
}
