import 'package:flutter/material.dart';
import 'package:greismorr_web/app/modules/technologies/domain/enum/technology_prowess.dart';
import 'package:greismorr_web/app/modules/technologies/presentation/widgets/desktop/techs_prowess_desktop_widget.dart';
import 'package:greismorr_web/app/modules/technologies/presentation/widgets/mobile/techs_prowess_mobile_widget.dart';
import 'package:greismorr_web/core/utils/is_mobile_version.dart';

class TechsProwessWidget extends StatelessWidget {
  final TechnologyProwess prowess;

  const TechsProwessWidget({
    super.key,
    required this.prowess,
  });

  @override
  Widget build(BuildContext context) {
    return isMobileVersion(context)
        ? TechsProwessMobileWidget(
            prowess: prowess,
          )
        : TechsProwessDesktopWidget(
            prowess: prowess,
          );
  }
}
