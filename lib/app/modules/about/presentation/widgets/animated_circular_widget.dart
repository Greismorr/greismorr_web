import 'package:flutter/material.dart';
import 'package:flutter_circular_text/circular_text/model.dart';
import 'package:flutter_circular_text/circular_text/widget.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/theme/custom_colors.dart';
import '../../../../../core/utils/theme/custom_text_styles.dart';

class AnimatedCircularWidget extends StatefulWidget {
  const AnimatedCircularWidget({super.key});

  @override
  State<AnimatedCircularWidget> createState() => _AnimatedCircularWidgetState();
}

class _AnimatedCircularWidgetState extends State<AnimatedCircularWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 300,
      ),
    );

    _animationController.forward();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: CustomColors.pinkToBlueGradient,
            borderRadius: BorderRadius.circular(
              100.0,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(
              1.2,
            ),
            child: AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) => Transform.rotate(
                angle: _animationController.value * 360,
                child: child,
              ),
              child: CircularText(
                children: [
                  TextItem(
                    text: Text(
                      FlutterI18n.translate(
                        context,
                        'devName',
                      ),
                      style: CustomTextStyles.circularText,
                    ),
                    space: 8,
                    startAngle: -90,
                    startAngleAlignment: StartAngleAlignment.center,
                    direction: CircularTextDirection.clockwise,
                  ),
                  TextItem(
                    text: Text(
                      FlutterI18n.translate(
                        context,
                        'aboutMe.devTitle',
                      ),
                      style: CustomTextStyles.circularText,
                    ),
                    space: 10,
                    startAngle: 90,
                    startAngleAlignment: StartAngleAlignment.center,
                    direction: CircularTextDirection.anticlockwise,
                  ),
                  TextItem(
                    text: const Text(
                      "•",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    space: 0,
                    startAngle: 197,
                    startAngleAlignment: StartAngleAlignment.center,
                    direction: CircularTextDirection.clockwise,
                  ),
                  TextItem(
                    text: const Text(
                      "•",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    space: 0,
                    startAngle: -17,
                    startAngleAlignment: StartAngleAlignment.center,
                    direction: CircularTextDirection.clockwise,
                  ),
                ],
                radius: 55,
                position: CircularTextPosition.inside,
                backgroundPaint: Paint()
                  ..color = CustomColors.circularTextBackgroundColor,
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(
            12,
          ),
          width: 78,
          height: 78,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: CustomColors.pinkToPurpleGradient,
          ),
          child: SvgPicture.asset(
            'assets/images/about/mobile.svg',
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _animationController.dispose();

    super.dispose();
  }
}
