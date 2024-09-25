import 'package:flutter/material.dart';

class AssetsPrecacher {
  late final String devPictureAsset;
  late final List<String> meshGradientAssets;
  late final List<String> mobileMeshGradientAssets;
  late final List<String> projectsAssets;
  late final List<String> technologiesAssets;

  AssetsPrecacher({
    required this.devPictureAsset,
    required this.mobileMeshGradientAssets,
    required this.meshGradientAssets,
    required this.projectsAssets,
    required this.technologiesAssets,
  });

  Future<void> preCacheAllAssets(BuildContext context) async {
    await Future.wait(
      [
        devPictureAsset,
        ...mobileMeshGradientAssets,
        ...meshGradientAssets,
        ...projectsAssets,
        ...technologiesAssets,
      ]
          .map(
            (asset) => precacheImage(
                AssetImage(
                  asset,
                ),
                context),
          )
          .toList(),
    );
  }
}
