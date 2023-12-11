import 'package:flutter/material.dart';

class AnimatedWavingHandWidget extends StatefulWidget {
  const AnimatedWavingHandWidget({super.key});

  @override
  State<AnimatedWavingHandWidget> createState() =>
      _AnimatedWavingHandWidgetState();
}

class _AnimatedWavingHandWidgetState extends State<AnimatedWavingHandWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(
      reverse: true,
    );
  late final Animation<double> _animation = Tween<double>(
    begin: 0,
    end: 20 / 360,
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticOut,
  ));

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _animation,
      child: Icon(
        Icons.waving_hand_rounded,
        color: Colors.brown.shade600,
        size: 64,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
