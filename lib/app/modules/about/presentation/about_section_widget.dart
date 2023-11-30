import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:greismorr_web/app/modules/about/presentation/widgets/animated_circular_widget.dart';
import 'package:greismorr_web/core/utils/theme/custom_text_styles.dart';

import '../../../../core/utils/theme/custom_colors.dart';
import 'widgets/animated_background_widget.dart';
import 'widgets/animated_waving_hand_widget.dart';

class AboutSectionWidget extends StatelessWidget {
  const AboutSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Stack(
      children: [
        const AnimatedBackgroundWidget(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: size.width / 2,
              height: 861,
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
                      AnimatedWavingHandWidget(),
                    ],
                  ),
                  Text(
                    FlutterI18n.translate(
                      context,
                      'aboutMe.iAmDev',
                    ),
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
                      foregroundDecoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: CustomColors.pinkToBlueGradient,
                        image: DecorationImage(
                          image: AssetImage(
                            'images/about/dev_picture.jpg',
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
        ),
      ],
    );
  }
}
