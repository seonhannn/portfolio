import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/common/colors.dart';
import 'package:portfolio/resources/resources.dart';

class Profile extends StatelessWidget {
  final double width;
  final double height;
  const Profile({required this.width, required this.height, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.2,
      color: CustomColors.blue0,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: height * 0.1, bottom: 12),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(100),
              ),
              child: Image.asset(
                Images.profile,
                width: width * 0.12,
                height: width * 0.12,
              ),
            ),
          ),
          const Text(
            "한지선",
            style: TextStyle(
              color: CustomColors.blue1,
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            "Mobile App Developer",
            style: TextStyle(
              color: CustomColors.blue1,
              fontWeight: FontWeight.w300,
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}
