import 'package:cached_network_image/cached_network_image.dart';
import 'package:edtech_app/components/bottom_navigation.dart';
import 'package:edtech_app/components/secondary_button.dart';
import 'package:edtech_app/model/user.dart';
import 'package:edtech_app/utils/app_theme.dart';
import 'package:edtech_app/views/course_screen.dart';
import 'package:edtech_app/views/homepage.dart';
import 'package:edtech_app/views/my_course.dart';
import 'package:edtech_app/views/setting_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  final User user;

  ProfileScreen({required this.user});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late User user;

  @override
  void initState() {
    super.initState();
    user = widget.user;
  }

  void onItemTapped(int index) {
    if(index == 1) return;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) {
        switch (index) {
          case 0:
            return Homepage();
          case 2:
            return SettingScreen();
          default:
            return CourseScreen();
        }
      }),
    );
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
          "Profile",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              width: 210,
              height: 210,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppTheme.secondaryColor,
                  width: 5,
                ),
                borderRadius: BorderRadius.circular(105),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: CachedNetworkImage(
                  imageUrl: user.avatarURL,
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20), // Add some space between image and text
          Text(
            user.name,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold), // Add some styling
          ),
          const SizedBox(height: 15,),
          SecondaryButton(btnContent: "Your courses",onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyCourse()
                ),
            );
          },
          ),
          const SizedBox(height: 10,),
          SecondaryButton(btnContent: "Saved",onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Homepage()
              ),
            );
          },
          ),
          const SizedBox(height: 10,),
          SecondaryButton(btnContent: "Payment",onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Homepage()
              ),
            );
          },
          ),
          const SizedBox(height: 10,),
          Center(
            child: InkWell(
              onTap: (){
                print("Log out pressed");
              },
              child: Text(
                "Log Out",
                style: TextStyle(
                  fontSize: 15,
                  color: AppTheme.inkGreyDark
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigation(currentIndex: 1, onItemTapped: onItemTapped),
    );
  }
}
