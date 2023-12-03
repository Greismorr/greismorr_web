import 'package:flutter/material.dart';

class BorderWithSquares extends StatelessWidget {
  final Widget child;

  const BorderWithSquares({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        ...[
          (left: 0.0, top: 0.0, right: null, bottom: null),
          (right: 0.0, top: 0.0, left: null, bottom: null),
          (left: 0.0, bottom: 0.0, right: null, top: null),
          (right: 0.0, bottom: 0.0, left: null, top: null),
        ].map(
          (alignment) => Positioned(
            left: alignment.left,
            right: alignment.right,
            top: alignment.top,
            bottom: alignment.bottom,
            child: Container(
              width: 9.69,
              height: 8.40,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
