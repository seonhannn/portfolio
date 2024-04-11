import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/common/colors.dart';
import 'package:portfolio/data/model.dart';
import 'package:portfolio/view/right/project_info.dart';

class WorkExperience extends ConsumerWidget {
  final List<WorkExperienceModel> list;
  final double width;
  final double height;
  const WorkExperience({
    required this.list,
    required this.width,
    required this.height,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.only(left: width * 0.1, right: width * 0.1),
      itemCount: list.length,
      itemBuilder: (context, companyIndex) {
        final WorkExperienceModel item = list[companyIndex];

        return Stack(
          children: [
            CompanyInfo(
              width: width,
              height: height,
              companyName: item.companyName,
              period: item.period,
            ),
            Positioned(
              left: width * 0.25,
              child: ProjectInfo(
                width: width,
                height: height,
                item: item,
              ),
            ),
          ],
        );
      },
    );
  }
}

class CompanyInfo extends StatelessWidget {
  final double width;
  final double height;
  final String companyName;
  final String period;
  const CompanyInfo(
      {required this.width,
      required this.height,
      required this.companyName,
      required this.period,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.2,
      height: height,
      padding: const EdgeInsets.only(top: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            companyName,
            style: const TextStyle(
              color: CustomColors.blue1,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            period,
            style: const TextStyle(
              color: CustomColors.blue1,
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
