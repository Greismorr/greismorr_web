import '../../../../../core/models/mixins/permancence_time_mixin.dart';

class EducationList {
  final List<Education> educations;

  EducationList(
    this.educations,
  );
}

class Education with PermanenceTimeMixin {
  final String school;
  final String course;

  @override
  final DateTime startingDate;
  @override
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
}
