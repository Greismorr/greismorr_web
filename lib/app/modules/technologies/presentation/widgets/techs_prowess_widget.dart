import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:greismorr_web/app/modules/technologies/domain/enum/technology_prowess.dart';
import 'package:provider/provider.dart';

import '../../../../../core/utils/theme/custom_colors.dart';
import '../../../../../core/utils/theme/custom_text_styles.dart';
import '../../domain/technology.dart';

class TechsProwessWidget extends StatelessWidget {
  final TechnologyProwess prowess;

  const TechsProwessWidget({
    super.key,
    required this.prowess,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        16,
      ),
      margin: const EdgeInsets.all(
        4,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: CustomColors.pinkMaster,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            FlutterI18n.translate(
              context,
              prowess.titleI18nKey,
            ),
            style: CustomTextStyles.h3,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
            ),
            child: Text(
              FlutterI18n.translate(
                context,
                prowess.descriptionI18nKey,
              ),
              style: CustomTextStyles.body14,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: context
                      .read<TechnologyList>()
                      .technologiesByProwess(prowess)
                      .map(
                        (technology) => Tooltip(
                          message: technology.name,
                          margin: const EdgeInsets.only(
                            right: 8,
                          ),
                          verticalOffset: 50,
                          preferBelow: true,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              right: 8,
                            ),
                            child: Container(
                              padding: const EdgeInsets.all(
                                8,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  12,
                                ),
                                color: CustomColors.gray900,
                              ),
                              child: Image.asset(
                                technology.asset,
                                width: 56,
                                height: 56,
                                isAntiAlias: true,
                                filterQuality: FilterQuality.medium,
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
