import 'package:flutter/material.dart';
import 'package:greismorr_web/core/utils/is_mobile_version.dart';

import 'widgets/desktop/experiences_widget.dart';
import 'widgets/educations_widget.dart';

class CurriculumSection extends StatelessWidget {
  const CurriculumSection({super.key});

  @override
  Widget build(BuildContext context) {
    return isMobileVersion(context)
        ? const Column(
            children: [
              ExperiencesWidget(),
              EducationsWidget(),
            ],
          )
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    right: 80,
                  ),
                  child: ExperiencesWidget(),
                ),
              ),
              Expanded(
                child: EducationsWidget(),
              ),
            ],
          );
  }
}
