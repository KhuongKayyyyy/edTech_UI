import 'package:edtech_app/components/bottom_navigation.dart';
import 'package:edtech_app/components/course_list.dart';
import 'package:edtech_app/data/fake_data.dart';
import 'package:edtech_app/model/course.dart';
import 'package:edtech_app/model/user.dart';
import 'package:edtech_app/views/course_screen.dart';
import 'package:edtech_app/views/profile_screen.dart';
import 'package:edtech_app/views/setting_screen.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}
class _HomepageState extends State<Homepage> {
  final Iterable<Course> recommendations = FakeData().courses.take(5);
  User user = FakeData().user;
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
              return SettingsScreen();
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
      appBar: AppBar(
        leading: null,
        title: Row(
          children: [
            const Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello,",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "Nguyen Dat Khuong",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 27,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.grey[300]!,
                    width: 2,
                  ),
                ),
                child: IconButton(
                  onPressed: () {
                    print("Notification Pressed");
                  },
                  icon: const Icon(Icons.notifications_on_outlined),
                ),
              ),
            ),
          ],
        ),
      ),
      body: CourseList(courseList: recommendations,),
      bottomNavigationBar: BottomNavigation(currentIndex: 0,onItemTapped: _onItemTapped,),
    );
  }
}
