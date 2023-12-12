import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:provider/provider.dart';

import '../../../../../core/utils/theme/custom_colors.dart';
import '../../../../../core/utils/theme/custom_text_styles.dart';
import '../../../../domain/model/assets_precacher.dart';
import 'animated_circular_widget.dart';
import 'animated_waving_hand_widget.dart';

class AboutDesktopWidget extends StatelessWidget {
  const AboutDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: size.width / 2,
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    '${FlutterI18n.translate(
                      context,
                      'aboutMe.hello',
                    )}, ',
                    style: CustomTextStyles.title,
                  ),
                  const AnimatedWavingHandWidget(),
                ],
              ),
              Text(
                '${FlutterI18n.translate(
                  context,
                  'aboutMe.iAmDev',
                )} Gabriel Reis',
                style: CustomTextStyles.title,
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
        ),
        SizedBox(
          width: 300,
          height: 250,
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
      ],
    );
  }
}
