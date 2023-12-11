import 'package:flutter/material.dart';

import '../utils/theme/custom_colors.dart';

class GradientText extends StatelessWidget {
  final LinearGradient? gradient;
  final Text text;

  const GradientText({
    super.key,
    required this.text,
    this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) =>
          (gradient ?? CustomColors.pinkToPurpleGradient).createShader(bounds),
      child: text,
    );
  }
}
