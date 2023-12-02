import 'package:flutter/material.dart';

import 'widgets/educations_widget.dart';
import 'widgets/experiences_widget.dart';

class CurriculumSection extends StatelessWidget {
  const CurriculumSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return SizedBox(
      width: size.width * .9,
      height: size.height,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
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
            ),
          ),
        ],
      ),
    );
  }
}
