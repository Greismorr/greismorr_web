import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:greismorr_web/app/domain/model/assets_precacher.dart';

import '../../modules/about/presentation/about_section_widget.dart';
import 'widgets/appbar_widget.dart';

class PortfolioHomePage extends StatefulWidget {
  const PortfolioHomePage({
    super.key,
  });

  @override
  State<PortfolioHomePage> createState() => _PortfolioHomePageState();
}

class _PortfolioHomePageState extends State<PortfolioHomePage> {
  final assetsPrecacher = AssetsPrecacher();

  @override
  void didChangeDependencies() {
    assetsPrecacher.preCacheAllAssets(context).then(
      (_) => FlutterNativeSplash.remove(),
    );

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size(
          double.infinity,
          kToolbarHeight,
        ),
        child: AppbarWidget(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AboutSectionWidget(),
          ],
        ),
      ),
    );
  }
}
