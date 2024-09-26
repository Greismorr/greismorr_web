import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/utils/theme/custom_colors.dart';
import '../../../../../core/utils/theme/custom_text_styles.dart';
import '../../domain/project_data.dart';
import 'project_image.dart';

class ProjectWidget extends StatelessWidget {
  final ProjectData project;

  const ProjectWidget({
    super.key,
    required this.project,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 488,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () => launchUrl(
              Uri.parse(
                project.projectUrl,
              ),
            ),
            child: ProjectImage(
              assetImage: project.asset,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 12,
            ),
            child: Text(
              project.name,
              style: CustomTextStyles.h3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 12,
            ),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: project.skills
                  .map(
                    (e) => Chip(
                      backgroundColor: CustomColors.pinkLight,
                      side: BorderSide.none,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      label: Text(
                        e,
                        style: CustomTextStyles.chip,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8,
            ),
            child: Text(
              FlutterI18n.translate(
                context,
                project.description,
              ),
              style: CustomTextStyles.body16,
            ),
          ),
        ],
      ),
    );
  }
}
