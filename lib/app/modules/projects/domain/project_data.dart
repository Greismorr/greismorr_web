class ProjectDataList {
  final List<ProjectData> projects;

  ProjectDataList(
    this.projects,
  );
}

class ProjectData {
  final String name;
  final String description;
  final List<String> skills;
  final String asset;
  final String projectUrl;
  late final String permanence;

  ProjectData({
    required this.name,
    required this.description,
    required this.skills,
    required this.asset,
    required this.projectUrl,
    required DateTime startingDate,
    DateTime? endingDate,
  }) {
    permanence =
        '${startingDate.year} - ${endingDate?.year ?? DateTime.now().year}';
  }
}
