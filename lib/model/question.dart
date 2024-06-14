import 'course_section.dart';
class Question {
  String questionText;
  List<String> options;
  int correctAnswerIndex;
  CourseSection courseSection;
  Question({
    required this.questionText,
    required this.options,
    required this.correctAnswerIndex,
    required this.courseSection,
  });
}
