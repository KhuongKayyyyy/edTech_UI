import 'package:edtech_app/components/test_item.dart';
import 'package:edtech_app/model/course_section.dart';
import 'package:flutter/material.dart';
import '../model/course.dart';

class CourseSectionTest extends StatelessWidget{
  Course course;
  CourseSectionTest({required this.course});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: course.sections.length,
      itemBuilder: (context,index){
        CourseSection courseSection = course.sections.elementAt(index);
        return TestItem(courseSection: courseSection,index: index,);
      },
    );
  }
}