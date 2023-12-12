import 'package:flutter/material.dart';
import 'package:greismorr_web/app/modules/about/presentation/widgets/about_desktop_widget.dart';
import 'package:greismorr_web/app/modules/about/presentation/widgets/about_mobile_widget.dart';
import 'package:greismorr_web/core/utils/is_mobile_version.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return isMobileVersion(context)
        ? const AboutMobileWidget()
        : const AboutDesktopWidget();
  }
}
