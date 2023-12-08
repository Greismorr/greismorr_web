import 'package:flutter/material.dart';

class PortfolioSections {
  late final List<PortfolioSection> sections;

  PortfolioSections(
    this.sections,
  );

  PortfolioSection sectionByKey(String sectionKey) => sections.singleWhere(
        (element) => element.name.contains(
          sectionKey,
        ),
      );
}

class PortfolioSection {
  late final String name;
  final GlobalKey navigatorKey = GlobalKey();

  PortfolioSection({
    required this.name,
  });
}
