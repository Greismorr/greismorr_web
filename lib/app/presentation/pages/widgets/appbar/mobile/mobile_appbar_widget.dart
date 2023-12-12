import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../core/utils/theme/custom_text_styles.dart';
import '../../../../../domain/constants/section_constants.dart';
import '../../../../../domain/model/portfolio_sections.dart';

class MobileAppbarWidget extends StatelessWidget {
  const MobileAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black.withOpacity(.6),
      elevation: 0,
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      title: TextButton(
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
    );
  }
}
