import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

import '../../../../core/utils/theme/custom_text_styles.dart';

class AppbarWidget extends StatefulWidget {
  const AppbarWidget({super.key});

  @override
  State<AppbarWidget> createState() => _AppbarWidgetState();
}

class _AppbarWidgetState extends State<AppbarWidget> {
  final List<String> portfolioSections = [
    'aboutMe',
    'curriculum',
    'projects',
    'technologies',
  ];

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Gabriel Reis',
              style: CustomTextStyles.menuOptions,
            ),
          ),
          Row(
            children: List.generate(
              portfolioSections.length,
              (index) {
                final String currentOption =
                    "${portfolioSections[index]}.sectionTitle";

                return TextButton(
                  onPressed: () {},
                  child: Text(
                    FlutterI18n.translate(
                      context,
                      currentOption,
                    ),
                    style: CustomTextStyles.menuOptions,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
