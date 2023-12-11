import '../../../../../core/models/mixins/permancence_time_mixin.dart';

class EducationList {
  final List<Education> educations;

  EducationList(
    this.educations,
  );
}

/// O campos couse retornará a chave de internacionalização 
/// a partir do nome da instituição de ensino. Portanto, ao inserir uma nova Education,
/// certifique-se de também criar os campos nos arquivos de internacionalização.
class Education with PermanenceTimeMixin {
  final String school;

  @override
  final DateTime startingDate;
  @override
  final DateTime? endingDate;

  Education({
    required this.school,
    required this.startingDate,
    this.endingDate,
  }) : assert(
          startingDate.isBefore(
            endingDate ?? DateTime.now(),
          ),
          "Starting date can't be before endingDate",
        );

  String get course => 'curriculum.education.${school.toLowerCase()}.course';
}
