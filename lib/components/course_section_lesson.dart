import 'package:cached_network_image/cached_network_image.dart';
import 'package:edtech_app/model/course_section.dart';
import 'package:edtech_app/utils/app_theme.dart';
import 'package:edtech_app/views/my_course_detail.dart';
import 'package:flutter/material.dart';

class CourseSectionLesson extends StatelessWidget{
  CourseSection courseSection;
  CourseSectionLesson({required this.courseSection});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10)
            ),
            child: Stack(
              children: [
                  ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    imageUrl: courseSection.imgURL,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: CustomPaint(
                    painter: IncompleteCirclePainter(),
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: Icon(
                        Icons.play_arrow,
                        color: AppTheme.success,
                        size: 40,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15,),
          const Text(
            "Introduction",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 10,),
          Text(
            courseSection.introduction,
            style: TextStyle(
              color: AppTheme.inkGreyDark,
            ),
          )
        ],
      ),
    );
  }
}