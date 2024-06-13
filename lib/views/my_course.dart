import 'package:edtech_app/components/bottom_navigation.dart';
import 'package:edtech_app/components/my_course_item.dart';
import 'package:edtech_app/data/fake_data.dart';
import 'package:edtech_app/model/course.dart';
import 'package:edtech_app/model/user.dart';
import 'package:edtech_app/views/course_screen.dart';
import 'package:edtech_app/views/homepage.dart';
import 'package:edtech_app/views/profile_screen.dart';
import 'package:edtech_app/views/setting_screen.dart';
import 'package:flutter/material.dart';

class MyCourse extends StatefulWidget {
  @override
  _MyCourseState createState() => _MyCourseState();
}

class _MyCourseState extends State<MyCourse> {
  User user = FakeData().user;
  final Iterable<Course> recommendations = FakeData().courses.take(5);

  void _onItemTapped(int index) {
    int _selectedIndex = 0;
    if (index == 0) {
      setState(() {
        _selectedIndex = index;
      });
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          switch (index) {
            case 1:
              return ProfileScreen(user: user,);
            case 2:
              return SettingScreen();
            default:
              return CourseScreen();
          }
        }),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey, width: 2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ],
        ),
        title: const Text(
          "Your Courses",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ListView.builder(
                itemCount: recommendations.length,
                itemBuilder: (context, index) {
                  Course course = recommendations.elementAt(index);
                  return Column(
                    children: [
                      MyCourseItem(course: course),
                      const SizedBox(height: 15,)
                    ],
                  );
                },
              ),
            )
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigation(currentIndex: 0,onItemTapped: _onItemTapped,),
    );
  }
}
