import 'package:edtech_app/components/course_lesson_item.dart';
import 'package:edtech_app/model/course.dart';
import 'package:edtech_app/model/course_section.dart';
import 'package:edtech_app/utils/app_theme.dart';
import 'package:flutter/material.dart';

class CourseSectionDetail extends StatefulWidget {
  final CourseSection courseSection;
  final int index;

  CourseSectionDetail({required this.courseSection, required this.index});

  @override
  _CourseSectionDetailState createState() => _CourseSectionDetailState();
}

class _CourseSectionDetailState extends State<CourseSectionDetail> {
  String activeTab = 'Lessons';

  void _setActiveTab(String tabName) {
    setState(() {
      activeTab = tabName;
    });
  }

  Widget _buildTabContent() {
    switch (activeTab) {
      case 'Lessons':
        return CourseLessonItem(courseSection: widget.courseSection); // Replace with actual content
      case 'Tests':
        return Text("Tests Content"); // Replace with actual content
      case 'Discuss':
        return Text("Discuss Content"); // Replace with actual content
      default:
        return Text("Lessons Content"); // Default content
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          widget.courseSection.course.name,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Text(
                  widget.courseSection.name,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "${widget.index + 1} of ${widget.courseSection.course.sections.length} lessons",
                  style: TextStyle(
                    color: AppTheme.inkGreyDark,
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: activeTab == 'Lessons' ? AppTheme.primaryColor.withOpacity(0.1) : AppTheme.inkGreyLight,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              _setActiveTab('Lessons');
                            },
                            style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all(Colors.transparent),
                              foregroundColor: MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                                  return activeTab == 'Lessons' ? AppTheme.primaryColor : AppTheme.inkGreyDark;
                                },
                              ),
                            ),
                            child: const Text("Lessons"),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: activeTab == 'Tests' ? AppTheme.primaryColor.withOpacity(0.1) : AppTheme.inkGreyLight,
                          ),
                          child: TextButton(
                            onPressed: () {
                              _setActiveTab('Tests');
                            },
                            style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all(Colors.transparent),
                              foregroundColor: MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                                  return activeTab == 'Tests' ? AppTheme.primaryColor : AppTheme.inkGreyDark;
                                },
                              ),
                            ),
                            child: const Text("Tests"),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: activeTab == 'Discuss' ? AppTheme.primaryColor.withOpacity(0.1) : AppTheme.inkGreyLight,
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              _setActiveTab('Discuss');
                            },
                            style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all(Colors.transparent),
                              foregroundColor: MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                                  return activeTab == 'Discuss' ? AppTheme.primaryColor : AppTheme.inkGreyDark;
                                },
                              ),
                            ),
                            child: const Text("Discuss"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: _buildTabContent(),
          ),
        ],
      ),
    );
  }
}
