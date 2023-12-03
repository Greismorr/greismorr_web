import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

import '../../../../../core/utils/theme/custom_text_styles.dart';
import '../../../../../core/widgets/gradient_text.dart';
import '../../../../presentation/pages/widgets/border_with_squares.dart';
import '../../domain/enum/technology_prowess.dart';
import '../widgets/techs_prowess_widget.dart';

class TechnologiesSection extends StatelessWidget {
  const TechnologiesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GradientText(
          text: Text(
            FlutterI18n.translate(
              context,
              'technologies.sectionTitle',
            ),
            style: CustomTextStyles.section,
          ),
        ),
        ...TechnologyProwess.values
            .map(
              (prowess) => Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                ),
                child: BorderWithSquares(
                  child: TechsProwessWidget(
                    prowess: prowess,
                  ),
                ),
              ),
            )
            .toList(),
      ],
    );
  }
}
