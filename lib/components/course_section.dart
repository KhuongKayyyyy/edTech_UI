import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:edtech_app/model/course.dart';
import 'package:edtech_app/utils/app_theme.dart';
import 'package:flutter/material.dart';

class CourseSection extends StatelessWidget{
  Course course;
  String courseSectionName;
  CourseSection({super.key, required this.course, required this.courseSectionName});

  double _generateRandomProcess(){
    final random = Random();
    return random.nextDouble();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[300]!,
          width: 2
        ),
        borderRadius: BorderRadius.circular(10)
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
                  imageUrl: course.imgUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 15,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    courseSectionName,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    height: 15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 2,
                        color: Colors.grey[300]!
                      )
                    ),
                    child: LinearProgressIndicator(
                      value: _generateRandomProcess(),
                      borderRadius: BorderRadius.circular(10),
                      backgroundColor: AppTheme.inkGreyLight,
                      valueColor: AlwaysStoppedAnimation<Color>(AppTheme.secondaryColor),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}