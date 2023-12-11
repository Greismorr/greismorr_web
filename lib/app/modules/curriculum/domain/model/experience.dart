import '../../../../../core/models/mixins/permancence_time_mixin.dart';

class ExperienceList {
  final List<Experience> experiences;

  ExperienceList(
    this.experiences,
  );
}

/// Os campos role e description retornarão as chaves de internacionalização
/// a partir do nome da empresa. Portanto, ao inserir uma nova Experience,
/// certifique-se de também criar os campos nos arquivos de internacionalização.
class Experience with PermanenceTimeMixin {
  final String company;

  @override
  final DateTime startingDate;
  @override
  final DateTime? endingDate;

  Experience({
    required this.company,
    required this.startingDate,
    this.endingDate,
  }) : assert(
          startingDate.isBefore(
            endingDate ?? DateTime.now(),
          ),
          "Starting date can't be before endingDate",
        );

  String get role => 'curriculum.experiences.${company.toLowerCase()}.role';
  String get description =>
      'curriculum.experiences.${company.toLowerCase()}.description';
}
