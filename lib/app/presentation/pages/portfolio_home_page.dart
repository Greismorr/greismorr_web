import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';

import '../../../core/utils/is_mobile_version.dart';
import '../../domain/constants/section_constants.dart';
import '../../domain/model/assets_precacher.dart';
import '../../domain/model/portfolio_sections.dart';
import '../../modules/about/presentation/about_section.dart';
import '../../modules/about/presentation/widgets/animated_background_widget.dart';
import '../../modules/curriculum/presentation/curriculum_section.dart';
import '../../modules/projects/presentation/projects_section.dart';
import '../../modules/contacts/presentation/pages/contacts_section.dart';
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
  late final portfolioSections = context.read<PortfolioSections>();

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
      drawerScrimColor: Colors.red,
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
            padding: EdgeInsets.symmetric(
              horizontal: isMobileVersion(context) ? 36 : 72,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AboutSection(
                    key: portfolioSections
                        .sectionByKey(
                          SectionConstants.about,
                        )
                        .navigatorKey,
                  ),
                  Padding(
                    key: portfolioSections
                        .sectionByKey(
                          SectionConstants.projects,
                        )
                        .navigatorKey,
                    padding: const EdgeInsets.only(
                      bottom: 200,
                    ),
                    child: const ProjectsSection(),
                  ),
                  Padding(
                    key: portfolioSections
                        .sectionByKey(
                          SectionConstants.curriculum,
                        )
                        .navigatorKey,
                    padding: const EdgeInsets.only(
                      bottom: 200,
                    ),
                    child: const CurriculumSection(),
                  ),
                  Padding(
                    key: portfolioSections
                        .sectionByKey(
                          SectionConstants.technologies,
                        )
                        .navigatorKey,
                    padding: const EdgeInsets.only(
                      bottom: 150,
                    ),
                    child: const TechnologiesSection(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: isMobileVersion(context) ? 50 : 100,
                    ),
                    child: const ContactsSection(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
