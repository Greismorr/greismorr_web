import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatefulWidget {
  final Text textWidget;

  const AnimatedTextWidget({
    super.key,
    required this.textWidget,
  });

  @override
  State<AnimatedTextWidget> createState() => _AnimatedTextWidgetState();
}

class _AnimatedTextWidgetState extends State<AnimatedTextWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 2,
      ),
    );

    final curve = CurvedAnimation(
      curve: Curves.decelerate,
      parent: _animationController,
    );

    _animation = Tween<Offset>(
      begin: const Offset(0.0, 50.0),
      end: Offset.zero,
    ).animate(curve);

    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: FadeTransition(
        opacity: _animationController,
        child: SlideTransition(
          position: _animation,
          child: widget.textWidget,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
