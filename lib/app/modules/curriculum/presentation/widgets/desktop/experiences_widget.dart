import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:provider/provider.dart';

import '../../../../../../core/utils/theme/custom_text_styles.dart';
import '../../../../../../core/widgets/gradient_text.dart';
import '../../../domain/model/experience.dart';

class ExperiencesWidget extends StatelessWidget {
  const ExperiencesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GradientText(
          text: Text(
            FlutterI18n.translate(
              context,
              'curriculum.experiences.sectionTitle',
            ),
            style: CustomTextStyles.section,
          ),
        ),
        ...context
            .read<ExperienceList>()
            .experiences
            .map(
              (experience) => Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 12,
                      ),
                      child: Text(
                        experience.permanence(context),
                        style: CustomTextStyles.dataRange,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            experience.company,
                            style: CustomTextStyles.h3,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8,
                            ),
                            child: Text(
                              FlutterI18n.translate(
                                context,
                                experience.role,
                              ),
                              style: CustomTextStyles.h4,
                            ),
                          ),
                          Text(
                            FlutterI18n.translate(
                              context,
                              experience.description,
                            ),
                            style: CustomTextStyles.body14,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
            .toList(),
      ],
    );
  }
}
