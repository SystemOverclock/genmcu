import 'package:flutter/material.dart';

class AppTheme {
  static Function get light => (BuildContext context) {
        MaterialColor customRed = const MaterialColor(0xFF650F0E, {
          50: Color.fromRGBO(101, 15, 14, 0.05),
          100: Color.fromRGBO(101, 15, 14, 0.1),
          200: Color.fromRGBO(101, 15, 14, 0.2),
          300: Color.fromRGBO(101, 15, 14, 0.3),
          400: Color.fromRGBO(101, 15, 14, 0.4),
          500: Color.fromRGBO(101, 15, 14, 0.5),
          600: Color.fromRGBO(101, 15, 14, 0.6),
          700: Color.fromRGBO(101, 15, 14, 0.7),
          800: Color.fromRGBO(101, 15, 14, 0.8),
          900: Color.fromRGBO(101, 15, 14, 0.9),
        });

        return ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          primarySwatch: customRed,
        );
      };
}
