import 'package:edtech_app/model/course.dart';
import 'package:edtech_app/model/course_section.dart';
import 'package:flutter/material.dart';

class CourseSectionDetail extends StatelessWidget{
  CourseSection courseSection;
  CourseSectionDetail({required this.courseSection});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          courseSection.course.name,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}