import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';

import 'app/domain/model/assets_precacher.dart';
import 'app/domain/model/custom_scroll_behavior.dart';
import 'app/modules/curriculum/domain/model/education.dart';
import 'app/modules/curriculum/domain/model/experience.dart';
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
            create: (context) => ProjectDataList(
              [
                ProjectData(
                  name: 'Pauliceia',
                  description:
                      'Plataforma que visa fazer o mapeamento colaborativo da história de São Paulo no período de 1870 a 1940.',
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
          Provider<ExperienceList>(
            create: (context) => ExperienceList(
              [
                Experience(
                  company: 'Petize',
                  role: 'Project Lead e Mobile Senior Engineer',
                  description:
                      'Atuo liderando o desenvolvimento de sistemas Web e Mobile (Android/iOS) em dois projetos da empresa. Sou também responsável pelo treinamento e supervisão do time. Entretanto, quando necessário, dou suporte ao time atuando nas outras áreas para que seja possível concluir o maior número possível de tarefas.',
                  startingDate: DateTime(2022, 2, 1),
                ),
                Experience(
                  company: 'IFBA',
                  role: 'Bolsista de Iniciação Tecnológica',
                  description:
                      'Desenvolvimento e manutenção da Bisnez com Flutter, uma rede social com foco em empreendedorismo disponível para Android e iOS.',
                  startingDate: DateTime(2021, 6, 1),
                  endingDate: DateTime(2023, 3, 1),
                ),
                Experience(
                  company: 'Colégio Integral',
                  role: 'Estagiário',
                  description:
                      'Atuei na implantação do primeiro sistema Qmágico da Bahia. Além disso, atuei no suporte ao usuário, manutenção de computadores e backup diário do banco de dados',
                  startingDate: DateTime(2019, 6, 1),
                  endingDate: DateTime(2020, 7, 1),
                )
              ],
            ),
          ),
          Provider<EducationList>(
            create: (context) => EducationList(
              [
                Education(
                  school: 'UFMG',
                  course: 'Extensão em Engenharia de Software Moderna',
                  startingDate: DateTime(2023, 8, 1),
                  endingDate: DateTime(2023, 11, 1),
                ),
                Education(
                  school: 'IFBA',
                  course: 'Tecnólogo em Análise e Desenvolvimento de Sistemas',
                  startingDate: DateTime(2018, 6, 1),
                  endingDate: DateTime(2023, 1, 1),
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
