import 'enum/technology_prowess.dart';

class TechnologyList {
  final List<Technology> technologies;

  TechnologyList(
    this.technologies,
  );

  List<Technology> technologiesByProwess(TechnologyProwess prowess) =>
      technologies
          .where(
            (element) => element.prowess == prowess,
          )
          .toList();
}

class Technology {
  final String name;
  final String asset;
  final TechnologyProwess prowess;

  Technology({
    required this.name,
    required this.asset,
    required this.prowess,
  });
}
