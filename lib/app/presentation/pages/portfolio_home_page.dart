import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';

import '../../domain/model/assets_precacher.dart';
import '../../modules/about/presentation/about_section.dart';
import '../../modules/about/presentation/widgets/animated_background_widget.dart';
import '../../modules/curriculum/presentation/curriculum_section.dart';
import '../../modules/projects/presentation/projects_section.dart';
import '../../modules/technologies/presentation/pages/technologies_section.dart';
import 'widgets/appbar_widget.dart';

class PortfolioHomePage extends StatefulWidget {
  const PortfolioHomePage({
    super.key,
  });

  @override
  State<PortfolioHomePage> createState() => _PortfolioHomePageState();
}

class _PortfolioHomePageState extends State<PortfolioHomePage> {
  @override
  void didChangeDependencies() {
    context.read<AssetsPrecacher>().preCacheAllAssets(context).then(
          (_) => FlutterNativeSplash.remove(),
        );

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: const PreferredSize(
        preferredSize: Size(
          double.infinity,
          kToolbarHeight,
        ),
        child: AppbarWidget(),
      ),
      body: Stack(
        children: [
          const AnimatedBackgroundWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 72,
            ),
            child: ListView(
              children: const [
                AboutSection(),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 200,
                  ),
                  child: ProjectsSection(),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 200,
                  ),
                  child: CurriculumSection(),
                ),
                TechnologiesSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
