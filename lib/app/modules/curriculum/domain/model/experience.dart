import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

class ExperienceList {
  final List<Experience> experiences;

  ExperienceList(
    this.experiences,
  );
}

class Experience {
  final String company;
  final String role;
  final String description;
  final DateTime startingDate;
  final DateTime? endingDate;

  Experience({
    required this.company,
    required this.role,
    required this.description,
    required this.startingDate,
    this.endingDate,
  }) : assert(
          startingDate.isBefore(
            endingDate ?? DateTime.now(),
          ),
          "Starting date can't be before endingDate",
        );

  String permanence(BuildContext context) =>
      '${startingDate.year} - ${endingDate?.year ?? FlutterI18n.translate(
            context,
            'curriculum.currentlyOn',
          )}';
}
