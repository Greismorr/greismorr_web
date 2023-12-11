import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:provider/provider.dart';

import '../../../../core/utils/theme/custom_text_styles.dart';
import '../../../../core/widgets/gradient_icon.dart';
import '../../../../core/widgets/gradient_text.dart';
import '../domain/project_data.dart';
import 'widgets/project_widget.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            bottom: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 16,
                ),
                child: GradientText(
                  text: Text(
                    FlutterI18n.translate(
                      context,
                      'projects.sectionTitle',
                    ),
                    style: CustomTextStyles.section,
                  ),
                ),
              ),
              Tooltip(
                message: FlutterI18n.translate(
                  context,
                  'projects.helperText',
                ),
                child: const GradientIcon(
                  icon: Icon(
                    Icons.info,
                  ),
                ),
              ),
            ],
          ),
        ),
        Flexible(
          child: Wrap(
            runSpacing: 48,
            spacing: 48,
            alignment: WrapAlignment.center,
            children: context
                .read<ProjectDataList>()
                .projects
                .map(
                  (project) => ProjectWidget(
                    project: project,
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
