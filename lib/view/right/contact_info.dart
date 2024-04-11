import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/common/colors.dart';

class ContactInfo extends ConsumerWidget {
  final double width;
  const ContactInfo({required this.width, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.1),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "안녕하세요.\n사람들이 좋아하는 서비스를 만들고 싶은 개발자, 한지선입니다.",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
              color: CustomColors.blue1,
            ),
          ),
          SizedBox(height: 24),
          Text(
            "Contact.",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: CustomColors.blue1,
            ),
          ),
          Row(
            children: [
              Icon(Icons.mail_outline, color: CustomColors.blue2),
              SizedBox(width: 6),
              Text(
                "seon.hannn@gmail.com",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: CustomColors.blue1,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.phone, color: CustomColors.blue2),
              SizedBox(width: 6),
              Text(
                "010-8321-2103",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: CustomColors.blue1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
