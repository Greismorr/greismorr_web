import 'package:flutter/material.dart';

class AssetsPrecacher {
  late final String devPictureAsset ;
  late final List<String> meshGradientAssets;
  late final List<String> projectsAssets;

  AssetsPrecacher({
    required this.devPictureAsset,
    required this.meshGradientAssets,
    required this.projectsAssets,
  });

  Future<void> preCacheAllAssets(BuildContext context) async {
    await Future.wait(
      [
        devPictureAsset,
        ...meshGradientAssets,
        ...projectsAssets,
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
