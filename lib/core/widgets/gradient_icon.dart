import 'package:flutter/material.dart';

import '../utils/theme/custom_colors.dart';

class GradientIcon extends StatelessWidget {
  final LinearGradient? gradient;
  final Icon icon;

  const GradientIcon({
    super.key,
    required this.icon,
    this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) =>
          (gradient ?? CustomColors.pinkToPurpleGradient).createShader(bounds),
      blendMode: BlendMode.srcIn,
      child: icon,
    );
  }
}
