import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n_delegate.dart';
import 'package:flutter_i18n/loaders/file_translation_loader.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';

import 'app/domain/model/assets_precacher.dart';
import 'app/domain/model/custom_scroll_behavior.dart';
import 'app/modules/projects/domain/project_data.dart';
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
          Provider<ProjectDataList>(
            create: (_) => ProjectDataList(
              [
                ProjectData(
                  name: 'Pauliceia',
                  description:
                      'Plataforma que visa fazer o mapeamento colaborativo da história de São Paulo no período de 1870 a 1940.',
                  startingDate: DateTime(2020, 3, 1),
                  endingDate: DateTime(2023, 2, 1),
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
                  description:
                      'Rede social voltada a empreendedores, focada principalmente em oferecer-lhes apoio para as fases de estabelecimento dos requisitos da proposta, validação, formação de equipes e preparação para incubação ou aceleração.',
                  startingDate: DateTime(2021, 6, 1),
                  endingDate: DateTime(2023, 3, 1),
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
                  description:
                      'Pacote criado para abstrair o uso da API do IBGE para obtenção de estados e de municipios.',
                  startingDate: DateTime(2022, 6, 1),
                  skills: ['Dart', 'Dart Packages'],
                  asset: 'assets/images/projects/estados_municipios.jpg',
                  projectUrl: 'https://pub.dev/packages/estados_municipios',
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
            ),
          ),
        ],
        child: const PortfolioHomePage(),
      ),
    ),
  );
}
