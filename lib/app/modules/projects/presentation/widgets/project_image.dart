import 'package:flutter/material.dart';

class ProjectImage extends StatelessWidget {
  final String assetImage;

  const ProjectImage({
    super.key,
    required this.assetImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 273,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
        image: DecorationImage(
          image: AssetImage(
            assetImage,
          ),
          fit: BoxFit.cover,
          alignment: Alignment.centerLeft,
        ),
      ),
    );
  }
}
