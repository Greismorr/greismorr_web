import '../../../../../core/models/mixins/permancence_time_mixin.dart';

class ExperienceList {
  final List<Experience> experiences;

  ExperienceList(
    this.experiences,
  );
}

class Experience with PermanenceTimeMixin {
  final String company;
  final String role;
  final String description;

  @override
  final DateTime startingDate;
  @override
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
}
