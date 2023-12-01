import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:greismorr_web/app/modules/projects/presentation/widgets/project_widget.dart';
import 'package:greismorr_web/core/utils/theme/custom_text_styles.dart';
import 'package:greismorr_web/core/widgets/gradient_text.dart';
import 'package:provider/provider.dart';

import '../domain/project_data.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return SizedBox(
      width: size.width * .9,
      height: size.height,
      child: Column(
        children: [
          GradientText(
            text: Text(
              FlutterI18n.translate(
                context,
                'projects.sectionTitle',
              ),
              style: CustomTextStyles.section,
            ),
          ),
          Flexible(
            child: ListView.separated(
                padding: const EdgeInsets.only(
                  top: 60,
                ),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (_, __) => const SizedBox(
                      width: 15,
                    ),
                shrinkWrap: true,
                itemCount: context.read<ProjectDataList>().projects.length,
                itemBuilder: (_, index) {
                  final project =
                      context.read<ProjectDataList>().projects[index];

                  return ProjectWidget(
                    project: project,
                  );
                }),
          ),
        ],
      ),
    );
  }
}
