import 'package:flutter/material.dart';

class CustomColors {
  static const Color background = Color(0xFF000000);
  static const Color textColor = Color(0xFFDEE2E6);
  static const Color circularTextBackgroundColor = Color(0xFF15062B);
  static const Color pinkLight = Color(0xFFffd4f6);
  static const Color pinkDark = Color(0xFF73015A);
  static const Color gray900 = Color(0xFFF8F9FA);
  static const Color gray700 = Color(0xFFE9ECEF);

  static const Gradient pinkToPurpleGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: <Color>[
      Color(0xffFFA9DF),
      Color(0xffBE06FF),
    ],
  );

  static const Gradient pinkToBlueGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: <Color>[
      Color(0xffFF8BD4),
      Color(0xff6666FF),
    ],
  );
}
