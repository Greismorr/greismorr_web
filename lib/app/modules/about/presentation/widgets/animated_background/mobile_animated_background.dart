import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../domain/model/assets_precacher.dart';

class MobileAnimatedBackgroundWidget extends StatefulWidget {
  const MobileAnimatedBackgroundWidget({
    super.key,
  });

  @override
  State<MobileAnimatedBackgroundWidget> createState() =>
      _MobileAnimatedBackgroundWidgetState();
}

class _MobileAnimatedBackgroundWidgetState
    extends State<MobileAnimatedBackgroundWidget> {
  late final ValueNotifier<String> notifier;
  late final List<String> mobileGradientMeshes;

  late final Timer periodicTimer;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();

    mobileGradientMeshes =
        context.read<AssetsPrecacher>().mobileMeshGradientAssets;

    notifier = ValueNotifier(
      mobileGradientMeshes.first,
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
    if (currentIndex == mobileGradientMeshes.length - 1) {
      currentIndex = 0;
    }

    currentIndex++;
    notifier.value = mobileGradientMeshes[currentIndex];
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
