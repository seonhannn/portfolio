import 'package:flutter/cupertino.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:portfolio/common/colors.dart';

class ProjectIndicator extends StatelessWidget {
  final int pageLength;
  final int currentIndex;
  final InfiniteScrollController controller;
  final GestureTapCallback onTap;
  const ProjectIndicator(
      {required this.pageLength,
      required this.currentIndex,
      required this.controller,
      required this.onTap,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        pageLength,
        (index) => GestureDetector(
          onTap: () {
            // onTap();
            controller.animateToItem(index);
          },
          child: Container(
            width: 24,
            height: 24,
            color:
                index == currentIndex ? CustomColors.blue0 : CustomColors.blue2,
          ),
        ),
      ),
    );
  }
}
