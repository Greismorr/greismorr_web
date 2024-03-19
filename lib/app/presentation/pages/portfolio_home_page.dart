import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:greismorr_web/app/presentation/pages/widgets/appbar/mobile/mobile_appbar_widget.dart';
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
import 'widgets/appbar/desktop/desktop_appbar_widget.dart';
import 'widgets/appbar/mobile/drawer_widget.dart';

class PortfolioHomePage extends StatefulWidget {
  const PortfolioHomePage({
    super.key,
  });

  @override
  State<PortfolioHomePage> createState() => _PortfolioHomePageState();
}

class _PortfolioHomePageState extends State<PortfolioHomePage> {
  late final portfolioSections = context.read<PortfolioSections>();
  late final portfolioSectionsWidgets = [
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
      padding: EdgeInsets.only(
        bottom: isMobileVersion(context) ? 100 : 200,
      ),
      child: const ProjectsSection(),
    ),
    Padding(
      key: portfolioSections
          .sectionByKey(
            SectionConstants.curriculum,
          )
          .navigatorKey,
      padding: EdgeInsets.only(
        bottom: isMobileVersion(context) ? 100 : 200,
      ),
      child: const CurriculumSection(),
    ),
    Padding(
      key: portfolioSections
          .sectionByKey(
            SectionConstants.technologies,
          )
          .navigatorKey,
      padding: EdgeInsets.only(
        bottom: isMobileVersion(context) ? 50 : 150,
      ),
      child: const TechnologiesSection(),
    ),
    Padding(
      padding: EdgeInsets.only(
        bottom: isMobileVersion(context) ? 50 : 100,
      ),
      child: const ContactsSection(),
    ),
  ];

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
      endDrawer: isMobileVersion(context) ? const DrawerWidget() : null,
      appBar: PreferredSize(
        preferredSize: const Size(
          double.infinity,
          kToolbarHeight,
        ),
        child: isMobileVersion(context)
            ? const MobileAppbarWidget()
            : const DesktopAppbarWidget(),
      ),
      body: Stack(
        children: [
          const AnimatedBackgroundWidget(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isMobileVersion(context) ? 36 : 72,
            ),
            child: ListView.builder(
              itemCount: portfolioSectionsWidgets.length,
              itemBuilder: (BuildContext context, int index) {
                return portfolioSectionsWidgets[index];
              },
            ),
          ),
        ],
      ),
    );
  }
}
