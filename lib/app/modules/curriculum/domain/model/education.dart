import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

class EducationList {
  final List<Education> educations;

  EducationList(
    this.educations,
  );
}

class Education {
  final String school;
  final String course;
  final DateTime startingDate;
  final DateTime? endingDate;

  Education({
    required this.school,
    required this.course,
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
