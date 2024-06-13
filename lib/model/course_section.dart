import 'package:edtech_app/model/course.dart';

class CourseSection {
  static int _idCounter = 0;
  final int id;
  final String imgURL;
  final String name;
  final String introduction;
  final Course course;

  CourseSection({
    required this.name,
    required this.imgURL,
    required this.introduction,
    required this.course,
  }) : id = _idCounter++;

  @override
  String toString() {
    return 'CourseSection{id: $id, name: $name, introduction: $introduction, courseId: ${course.id}}';
  }
}
