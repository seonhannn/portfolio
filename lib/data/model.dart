class WorkExperienceModel {
  final String companyName;
  final String period;
  final List<ProjectListItemModel> projects;

  const WorkExperienceModel({
    required this.companyName,
    required this.period,
    required this.projects,
  });
}

class ProjectListItemModel {
  final String projectName;
  final String projectStacks;
  final String description;
  final String? iosLink;
  final String? aosLink;
  final List<ProjectPageListItemModel> pages;

  const ProjectListItemModel({
    required this.projectName,
    required this.projectStacks,
    required this.description,
    this.iosLink,
    this.aosLink,
    required this.pages,
  });
}

class ProjectPageListItemModel {
  final String pageName;
  final List<String> tasks;

  const ProjectPageListItemModel({
    required this.pageName,
    required this.tasks,
  });
}
