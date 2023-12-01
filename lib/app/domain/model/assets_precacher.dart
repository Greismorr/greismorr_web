import 'package:flutter/material.dart';

class AssetsPrecacher {
  final List _assets = [
    'assets/images/about/dev_picture.jpg',
    'assets/images/mesh_gradient/mesh_gradient_step_1.png',
    'assets/images/mesh_gradient/mesh_gradient_step_2.png',
    'assets/images/mesh_gradient/mesh_gradient_step_3.png'
  ];

  Future<void> preCacheAllAssets(BuildContext context) async {
    await Future.wait(
      _assets
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
