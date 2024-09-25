import 'package:flutter/material.dart';
import 'package:greismorr_web/app/modules/about/presentation/widgets/animated_background/desktop_animated_background.dart';
import 'package:greismorr_web/app/modules/about/presentation/widgets/animated_background/mobile_animated_background.dart';
import 'package:greismorr_web/core/utils/is_mobile_version.dart';

class AnimatedBackgroundWidget extends StatelessWidget {
  const AnimatedBackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) => isMobileVersion(context)
      ? const MobileAnimatedBackgroundWidget()
      : const DesktopAnimatedBackgroundWidget();
}
