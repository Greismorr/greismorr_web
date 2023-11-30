import 'package:flutter/material.dart';

class CustomColors {
  static const Color background = Color(0xFF000000);
  static const Color textColor = Color(0xFFDEE2E6);

  //aboutMe
  static const Color circularTextBackgroundColor = Color(0xFF15062B);
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
