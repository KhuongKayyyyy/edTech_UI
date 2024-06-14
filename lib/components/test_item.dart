import 'package:cached_network_image/cached_network_image.dart';
import 'package:edtech_app/model/course_section.dart';
import 'package:edtech_app/utils/app_theme.dart';
import 'package:edtech_app/views/question_screen.dart';
import 'package:flutter/material.dart';

class TestItem extends StatelessWidget{
  int index;
  CourseSection courseSection;
  String demoSentence = "Let’s put your memory on this topic test. Solve tasks and check your knowledge.";
  TestItem({required this.courseSection, required this.index});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  width: 2,
                  color: AppTheme.inkGreyDark
              )
          ),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                const SizedBox(height: 10,),
                Text(
                  "Quiz ${index+1}",
                  style: TextStyle(
                      color: AppTheme.primaryColor,
                      fontSize: 15
                  ),
                ),
                Text(
                  courseSection.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  demoSentence,
                  style: TextStyle(
                    color: AppTheme.inkGreyDark
                  ),
                ),
                const SizedBox(height: 30,),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppTheme.primaryColor,
                      width: 2
                    ),
                    borderRadius: BorderRadius.circular(14)
                  ),
                  child:ElevatedButton(
                    onPressed: () {
                      print("Button Test Pressed");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuestionScreen(courseSection: courseSection)
                        ),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                          // Remove the ripple effect by setting transparent color
                          if (states.contains(MaterialState.pressed)) {
                            return AppTheme.primaryColor.withOpacity(0.1);
                          }
                          return null; // Return null to use the default overlayColor
                        },
                      ),
                    ),
                    child: const Text(
                      "Begin",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
              ],
            ),
          )
      ),
    );
  }
}