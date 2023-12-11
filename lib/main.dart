import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';

import 'app/domain/model/assets_precacher.dart';
import 'app/domain/model/custom_scroll_behavior.dart';
import 'app/domain/model/portfolio_sections.dart';
import 'app/modules/contacts/domain/model/contact.dart';
import 'app/modules/curriculum/domain/model/education.dart';
import 'app/modules/curriculum/domain/model/experience.dart';
import 'app/modules/projects/domain/project_data.dart';
import 'app/modules/technologies/domain/enum/technology_prowess.dart';
import 'app/modules/technologies/domain/technology.dart';
import 'app/presentation/pages/portfolio_home_page.dart';

void main() {
  const appName = 'Greismorr';

  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(
    MaterialApp(
      title: appName,
      scrollBehavior: CustomScrollBehavior(),
      localizationsDelegates: [
        FlutterI18nDelegate(
          translationLoader: FileTranslationLoader(
            basePath: 'assets/i18n',
            useCountryCode: true,
          ),
          missingTranslationHandler: (key, locale) {
            if (kDebugMode) {
              print(
                '--- Missing Key: $key, languageCode: ${locale?.countryCode}',
              );
            }
          },
        ),
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('pt', 'BR'),
      ],
      debugShowCheckedModeBanner: false,
      home: MultiProvider(
        providers: [
          Provider(
            create: (context) => ProjectDataList(
              [
                ProjectData(
                  name: 'Pauliceia',
                  skills: [
                    'VueJS',
                    'Python',
                    'Flask',
                    'OpenStreetMaps',
                    'PostGIS',
                    'UI/UX',
                  ],
                  asset: 'assets/images/projects/pauliceia.jpeg',
                  projectUrl: 'https://pauliceia.unifesp.br/portal/home',
                ),
                ProjectData(
                  name: 'Bisnez',
                  skills: [
                    'Flutter',
                    'CI/CD',
                    'NodeJS',
                    'Firebase',
                    'Sentry',
                    'Deep Links',
                  ],
                  asset: 'assets/images/projects/bisnez.jpg',
                  projectUrl: 'https://www.instagram.com/soubisnez/',
                ),
                ProjectData(
                  name: 'estados_municipios',
                  skills: ['Dart', 'Dart Packages'],
                  asset: 'assets/images/projects/estados_municipios.jpg',
                  projectUrl: 'https://pub.dev/packages/estados_municipios',
                ),
                ProjectData(
                  name: 'internet_builder',
                  skills: ['Flutter', 'Dart Packages'],
                  asset: 'assets/images/projects/internet_builder.jpg',
                  projectUrl: 'https://pub.dev/packages/internet_builder',
                ),
                ProjectData(
                  name: 'CobrasEscadas',
                  skills: ['Flutter'],
                  asset: 'assets/images/projects/cobras_escadas.jpg',
                  projectUrl: 'https://github.com/Greismorr/CobrasEscadas',
                ),
              ],
            ),
          ),
          Provider(
            create: (context) => ExperienceList(
              [
                Experience(
                  company: 'Petize',
                  startingDate: DateTime(2022, 2, 1),
                ),
                Experience(
                  company: 'IFBA',
                  startingDate: DateTime(2021, 6, 1),
                  endingDate: DateTime(2023, 3, 1),
                ),
                Experience(
                  company: 'Colégio Integral',
                  startingDate: DateTime(2019, 6, 1),
                  endingDate: DateTime(2020, 7, 1),
                )
              ],
            ),
          ),
          Provider(
            create: (context) => EducationList(
              [
                Education(
                  school: 'UFMG',
                  startingDate: DateTime(2023, 8, 1),
                  endingDate: DateTime(2023, 11, 1),
                ),
                Education(
                  school: 'IFBA',
                  startingDate: DateTime(2018, 6, 1),
                  endingDate: DateTime(2023, 1, 1),
                ),
              ],
            ),
          ),
          Provider(
            create: (context) => TechnologyList(
              [
                Technology(
                  name: 'Flutter',
                  asset: 'assets/images/technologies/flutter.png',
                  prowess: TechnologyProwess.mains,
                ),
                Technology(
                  name: 'Firebase',
                  asset: 'assets/images/technologies/firebase.png',
                  prowess: TechnologyProwess.mains,
                ),
                Technology(
                  name: 'NodeJS',
                  asset: 'assets/images/technologies/nodejs.png',
                  prowess: TechnologyProwess.mains,
                ),
                Technology(
                  name: 'Cloud Functions',
                  asset: 'assets/images/technologies/cloud_functions.png',
                  prowess: TechnologyProwess.mains,
                ),
                Technology(
                  name: 'Codemagic',
                  asset: 'assets/images/technologies/codemagic.png',
                  prowess: TechnologyProwess.mains,
                ),
                Technology(
                  name: 'Fastlane',
                  asset: 'assets/images/technologies/fastlane.png',
                  prowess: TechnologyProwess.mains,
                ),
                Technology(
                  name: 'Flagsmith',
                  asset: 'assets/images/technologies/flagsmith.png',
                  prowess: TechnologyProwess.mains,
                ),
                Technology(
                  name: 'Mapbox',
                  asset: 'assets/images/technologies/mapbox.png',
                  prowess: TechnologyProwess.mains,
                ),
                Technology(
                  name: 'OneSignal',
                  asset: 'assets/images/technologies/onesignal.png',
                  prowess: TechnologyProwess.mains,
                ),
                Technology(
                  name: 'Branch.io',
                  asset: 'assets/images/technologies/branch.png',
                  prowess: TechnologyProwess.mains,
                ),
                Technology(
                  name: 'Sonarqube',
                  asset: 'assets/images/technologies/sonarqube.png',
                  prowess: TechnologyProwess.mains,
                ),
                Technology(
                  name: 'React',
                  asset: 'assets/images/technologies/react.png',
                  prowess: TechnologyProwess.knowns,
                ),
                Technology(
                  name: 'Google Maps API',
                  asset: 'assets/images/technologies/google_maps.png',
                  prowess: TechnologyProwess.knowns,
                ),
                Technology(
                  name: 'MySQL',
                  asset: 'assets/images/technologies/my_sql.png',
                  prowess: TechnologyProwess.knowns,
                ),
                Technology(
                  name: 'Postgres',
                  asset: 'assets/images/technologies/postgres.png',
                  prowess: TechnologyProwess.knowns,
                ),
                Technology(
                  name: 'AWS',
                  asset: 'assets/images/technologies/aws.png',
                  prowess: TechnologyProwess.knowns,
                ),
                Technology(
                  name: 'Open Street Maps',
                  asset: 'assets/images/technologies/open_street_maps.png',
                  prowess: TechnologyProwess.knowns,
                ),
                Technology(
                  name: 'Python',
                  asset: 'assets/images/technologies/python.png',
                  prowess: TechnologyProwess.familiars,
                ),
                Technology(
                  name: 'Java',
                  asset: 'assets/images/technologies/java.png',
                  prowess: TechnologyProwess.familiars,
                ),
                Technology(
                  name: 'VueJS',
                  asset: 'assets/images/technologies/vuejs.png',
                  prowess: TechnologyProwess.familiars,
                ),
              ],
            ),
          ),
          Provider<AssetsPrecacher>(
            create: (context) => AssetsPrecacher(
              devPictureAsset: 'assets/images/about/dev_picture.jpg',
              meshGradientAssets: [
                'assets/images/mesh_gradient/mesh_gradient_step_1.png',
                'assets/images/mesh_gradient/mesh_gradient_step_2.png',
                'assets/images/mesh_gradient/mesh_gradient_step_3.png'
              ],
              projectsAssets: context
                  .read<ProjectDataList>()
                  .projects
                  .map(
                    (e) => e.asset,
                  )
                  .toList(),
              technologiesAssets: context
                  .read<TechnologyList>()
                  .technologies
                  .map(
                    (e) => e.asset,
                  )
                  .toList(),
            ),
          ),
          Provider(
            create: (context) => ContactList(
              [
                Contact(
                  contactMean: 'LinkedIn',
                  url: 'https://www.linkedin.com/in/ternoreis/',
                  iconPath: 'assets/icons/Linkedin.svg',
                ),
                Contact(
                  contactMean: 'GitHub',
                  url: 'https://github.com/Greismorr',
                  iconPath: 'assets/icons/Github.svg',
                ),
                Contact(
                  contactMean: 'Medium',
                  url: 'https://medium.com/@greismorr',
                  iconPath: 'assets/icons/Medium.svg',
                ),
              ],
            ),
          ),
          Provider(
            create: (context) => PortfolioSections(
              [
                PortfolioSection(
                  name: 'aboutMe.sectionTitle',
                ),
                PortfolioSection(
                  name: 'projects.sectionTitle',
                ),
                PortfolioSection(
                  name: 'curriculum.sectionTitle',
                ),
                PortfolioSection(
                  name: 'technologies.sectionTitle',
                ),
              ],
            ),
          ),
        ],
        child: const PortfolioHomePage(),
      ),
    ),
  );
}
