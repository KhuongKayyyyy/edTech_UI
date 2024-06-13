import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:edtech_app/model/course_section.dart';
import 'package:edtech_app/utils/app_theme.dart';
import 'package:edtech_app/views/course_section_detail.dart';
import 'package:flutter/material.dart';

class CourseSectionItem extends StatelessWidget {
  final CourseSection courseSection;

  CourseSectionItem({required this.courseSection});

  double _generateRandomProcess() {
    final random = Random();
    return random.nextDouble();
  }

  @override
  Widget build(BuildContext context) {
    double progressValue = _generateRandomProcess();

    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CourseSectionDetail(courseSection: courseSection),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey[300]!,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              SizedBox(
                height: 70,
                width: 70,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    imageUrl: courseSection.imgURL,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      courseSection.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 2,
                          color: Colors.grey[300]!,
                        ),
                      ),
                      child: LinearProgressIndicator(
                        value: progressValue,
                        backgroundColor: AppTheme.inkGreyLight,
                        valueColor: AlwaysStoppedAnimation<Color>(AppTheme.secondaryColor),
                        minHeight: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
