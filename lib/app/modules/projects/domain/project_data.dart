class ProjectDataList {
  final List<ProjectData> projects;

  ProjectDataList(
    this.projects,
  );
}

/// O campos description retornará a chaves de internacionalização
/// a partir do nome do projeto. Portanto, ao inserir um novo ProjectData,
/// certifique-se de também criar os campos nos arquivos de internacionalização.
class ProjectData {
  final String name;
  final List<String> skills;
  final String asset;
  final String projectUrl;

  ProjectData({
    required this.name,
    required this.skills,
    required this.asset,
    required this.projectUrl,
  });

  String get description => 'projects.${name.toLowerCase()}.description';
}
