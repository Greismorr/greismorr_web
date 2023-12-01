import 'dart:async';

import 'package:flutter/material.dart';

class AnimatedBackgroundWidget extends StatefulWidget {
  const AnimatedBackgroundWidget({
    super.key,
  });

  @override
  State<AnimatedBackgroundWidget> createState() =>
      _AnimatedBackgroundWidgetState();
}

class _AnimatedBackgroundWidgetState extends State<AnimatedBackgroundWidget> {
  late final ValueNotifier<String> notifier;
  final List<String> gradientMeshes = [
    'assets/images/mesh_gradient/mesh_gradient_step_1.png',
    'assets/images/mesh_gradient/mesh_gradient_step_2.png',
    'assets/images/mesh_gradient/mesh_gradient_step_3.png',
  ];
  late final Timer periodicTimer;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();

    notifier = ValueNotifier(
      gradientMeshes.first,
    );

    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        _updateImage();
        periodicTimer = Timer.periodic(
          const Duration(
            milliseconds: 1800,
          ),
          (timer) => _updateImage(),
        );
      },
    );
  }

  void _updateImage() {
    if (currentIndex == gradientMeshes.length - 1) {
      currentIndex = 0;
    }

    currentIndex++;
    notifier.value = gradientMeshes[currentIndex];
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return ValueListenableBuilder(
      valueListenable: notifier,
      builder: (context, value, child) {
        return AnimatedSwitcher(
          duration: const Duration(
            milliseconds: 2000,
          ),
          transitionBuilder: (child, animation) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
          child: Image(
            key: Key(
              value,
            ),
            image: AssetImage(
              value,
            ),
            width: size.width,
            height: 861,
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    notifier.dispose();
    periodicTimer.cancel();
    super.dispose();
  }
}
