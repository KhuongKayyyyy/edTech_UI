import 'package:flutter/material.dart';
import 'package:edtech_app/components/course_item.dart';
import 'package:edtech_app/components/searchbar_custom.dart';
import 'package:edtech_app/data/fake_data.dart';
import 'package:edtech_app/model/course.dart';

class CourseScreen extends StatelessWidget {
  final Iterable<Course> recommendations = FakeData().courses;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Courses"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            const SizedBox(height: 10),
            SearchBarCustom(),
            const SizedBox(height: 10),
            Row(
              children: [
                const Text("Category: "),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: ElevatedButton(
                          onPressed: () {
                            print("Category pressed");
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                            backgroundColor: const Color(0xFF65AAEA),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(3.0),
                            child: Text(
                              "#CSS",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: ElevatedButton(
                          onPressed: () {
                            print("Category pressed");
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                            backgroundColor: const Color(0xFF65AAEA),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(3.0),
                            child: Text(
                              "#UX",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: ElevatedButton(
                          onPressed: () {
                            print("Category pressed");
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                            backgroundColor: const Color(0xFF65AAEA),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(3.0),
                            child: Text(
                              "#UI",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),

                      // Add more categories here
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: recommendations.length,
                itemBuilder: (context, index) {
                  Course course = recommendations.elementAt(index);
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: CourseItem(course: course),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
