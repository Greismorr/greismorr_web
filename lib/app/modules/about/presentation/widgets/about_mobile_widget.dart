import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:provider/provider.dart';

import '../../../../../core/utils/theme/custom_colors.dart';
import '../../../../../core/utils/theme/custom_text_styles.dart';
import '../../../../domain/model/assets_precacher.dart';
import 'animated_circular_widget.dart';
import 'animated_waving_hand_widget.dart';

class AboutMobileWidget extends StatelessWidget {
  const AboutMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 100,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 64,
            ),
            child: Row(
              children: [
                Text(
                  '${FlutterI18n.translate(
                    context,
                    'aboutMe.hello',
                  )}, ',
                  style: CustomTextStyles.title.copyWith(
                    fontSize: 48,
                  ),
                ),
                const AnimatedWavingHandWidget(),
              ],
            ),
          ),
          Text(
            '${FlutterI18n.translate(
              context,
              'aboutMe.iAmDev',
            )} Gabriel Reis',
            style: CustomTextStyles.title.copyWith(
              fontSize: 32,
            ),
          ),
          Container(
            width: 300,
            height: 250,
            margin: const EdgeInsets.symmetric(
              vertical: 16,
            ),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Positioned(
                  left: 60,
                  child: Container(
                    width: 230,
                    height: 235,
                    foregroundDecoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: CustomColors.pinkToBlueGradient,
                      image: DecorationImage(
                        image: AssetImage(
                          context.read<AssetsPrecacher>().devPictureAsset,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 0,
                  child: AnimatedCircularWidget(),
                ),
              ],
            ),
          ),
          Text(
            FlutterI18n.translate(
              context,
              'aboutMe.sectionText',
            ),
            style: CustomTextStyles.subtitle,
          ),
        ],
      ),
    );
  }
}
