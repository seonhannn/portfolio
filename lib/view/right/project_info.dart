import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:portfolio/common/colors.dart';
import 'package:portfolio/data/model.dart';
import 'package:portfolio/resources/resources.dart';
import 'package:portfolio/view/right/tasks.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectInfo extends StatefulWidget {
  final WorkExperienceModel item;
  final double width;
  final double height;
  const ProjectInfo(
      {required this.item,
      required this.width,
      required this.height,
      super.key});

  @override
  State<ProjectInfo> createState() => _ProjectInfoState();
}

class _ProjectInfoState extends State<ProjectInfo> {
  final PageController controller = PageController();
  final ScrollController scrollController = ScrollController();
  int currentIndex = 0;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    launchURL(String uri) async {
      if (await canLaunchUrl(Uri.parse(uri))) {
        await launchUrl(Uri.parse(uri));
      } else {
        throw 'Could not launch $uri';
      }
    }

    return Stack(
      children: [
        Container(
          width: widget.width * 0.8,
          height: widget.height,
          padding: const EdgeInsets.only(top: 60, bottom: 80),
          child: PageView.builder(
            controller: controller,
            itemCount: widget.item.projects.length,
            itemBuilder: (context, index) {
              final project = widget.item.projects[index];
              return SizedBox(
                height: widget.height - 120,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            project.projectName,
                            style: const TextStyle(
                              color: CustomColors.blue1,
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(width: 24),
                          if (project.iosLink != null)
                            GestureDetector(
                              onTap: () => launchURL(project.iosLink!),
                              child: Image.asset(
                                Images.appstoreIcon,
                                width: 36,
                                height: 36,
                              ),
                            ),
                          const SizedBox(width: 6),
                          if (project.aosLink != null)
                            GestureDetector(
                              onTap: () => launchURL(project.aosLink!),
                              child: Image.asset(
                                Images.playstoreIcon,
                                width: 36,
                                height: 36,
                              ),
                            ),
                        ],
                      ),
                      Text(
                        project.projectStacks,
                        style: const TextStyle(
                          color: CustomColors.blue1,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        "Description.",
                        style: TextStyle(
                          color: CustomColors.blue1,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        project.description,
                        style: const TextStyle(
                          color: CustomColors.blue1,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Tasks(project: project)
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        Positioned(
          bottom: 60,
          right: widget.width * 0.6,
          child: Row(
            children: List.generate(
              widget.item.projects.length,
              (selectIndex) => GestureDetector(
                onTap: () {
                  controller.animateToPage(
                    selectIndex,
                    curve: Curves.linear,
                    duration: const Duration(milliseconds: 350),
                  );
                  currentIndex = selectIndex;
                  setState(() {});
                },
                child: Container(
                  width: 18,
                  height: 18,
                  margin: EdgeInsets.only(
                    right:
                        selectIndex != widget.item.projects.length - 1 ? 8 : 0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: selectIndex == currentIndex
                        ? CustomColors.blue1
                        : CustomColors.blue0,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
