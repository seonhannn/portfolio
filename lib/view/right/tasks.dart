import 'package:flutter/material.dart';
import 'package:portfolio/common/colors.dart';
import 'package:portfolio/data/model.dart';

class Tasks extends StatelessWidget {
  final ProjectListItemModel project;
  const Tasks({required this.project, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "What did I do.",
          style: TextStyle(
            color: CustomColors.blue1,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: project.pages.length,
          itemBuilder: (context, pageIndex) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ExperienceTitle(title: project.pages[pageIndex].pageName),
                ExperienceContent(contents: project.pages[pageIndex].tasks),
              ],
            );
          },
        )
      ],
    );
  }
}

class ExperienceTitle extends StatelessWidget {
  final String title;
  const ExperienceTitle({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: CustomColors.blue1,
        fontSize: 14,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}

class ExperienceContent extends StatelessWidget {
  final List<String> contents;
  const ExperienceContent({required this.contents, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: contents.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Text(
          "- ${contents[index]}",
          style: const TextStyle(
            color: CustomColors.blue1,
            fontSize: 14,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
