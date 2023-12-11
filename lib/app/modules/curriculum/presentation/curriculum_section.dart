import 'package:flutter/material.dart';

import 'widgets/educations_widget.dart';
import 'widgets/experiences_widget.dart';

class CurriculumSection extends StatelessWidget {
  const CurriculumSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
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
