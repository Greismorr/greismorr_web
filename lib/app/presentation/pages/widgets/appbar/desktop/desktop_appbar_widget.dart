import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:provider/provider.dart';

import '../../../../../../core/utils/theme/custom_text_styles.dart';
import '../../../../../domain/constants/section_constants.dart';
import '../../../../../domain/model/portfolio_sections.dart';

class DesktopAppbarWidget extends StatefulWidget {
  const DesktopAppbarWidget({super.key});

  @override
  State<DesktopAppbarWidget> createState() => _DesktopAppbarWidgetState();
}

class _DesktopAppbarWidgetState extends State<DesktopAppbarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black.withOpacity(.6),
      elevation: 0,
      title: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * .08,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () => Scrollable.ensureVisible(
                context
                    .read<PortfolioSections>()
                    .sectionByKey(
                      SectionConstants.about,
                    )
                    .navigatorKey
                    .currentContext!,
                duration: const Duration(
                  milliseconds: 600,
                ),
              ),
              child: Text(
                'Greismorr',
                style: CustomTextStyles.menuOptions,
              ),
            ),
            Row(
              children: context
                  .read<PortfolioSections>()
                  .sections
                  .map(
                    (section) => TextButton(
                      onPressed: () {
                        Scrollable.ensureVisible(
                          section.navigatorKey.currentContext!,
                          duration: const Duration(
                            milliseconds: 600,
                          ),
                        );
                      },
                      child: Text(
                        FlutterI18n.translate(
                          context,
                          section.name,
                        ),
                        style: CustomTextStyles.menuOptions,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
