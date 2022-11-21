import 'package:flutter/material.dart';
import 'package:flutter_theme_extension_poc/theme/layout/breakpoints.dart';
import 'package:flutter_theme_extension_poc/theme/responsive_theme.dart';
import 'package:flutter_theme_extension_poc/widgets/home.dart';

class ResponsiveApp extends StatelessWidget {
  const ResponsiveApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        late ThemeData themeData;

        if (constraints.maxWidth <= AppBreakpoints.small) {
          themeData = ResponsiveTheme.small;
        } else if (constraints.maxWidth <= AppBreakpoints.medium) {
          themeData = ResponsiveTheme.medium;
        } else {
          themeData = ResponsiveTheme.large;
        }

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themeData,
          home: const HomeScreen(),
        );
      },
    );
  }
}
