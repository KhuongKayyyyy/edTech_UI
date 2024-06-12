import 'package:cached_network_image/cached_network_image.dart';
import 'package:edtech_app/components/bottom_navigation.dart';
import 'package:edtech_app/components/secondary_button.dart';
import 'package:edtech_app/components/setting_button.dart';
import 'package:edtech_app/data/fake_data.dart';
import 'package:edtech_app/model/user.dart';
import 'package:edtech_app/utils/app_theme.dart';
import 'package:edtech_app/utils/setting_types.dart';
import 'package:edtech_app/views/course_screen.dart';
import 'package:edtech_app/views/homepage.dart';
import 'package:edtech_app/views/profile_screen.dart';
import 'package:flutter/material.dart';
class SettingScreen extends StatefulWidget{
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}
class _SettingsScreenState extends  State<SettingScreen>{
  User user = FakeData().user;
  void onItemTapped(int index) {
    if(index == 2) return;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) {
        switch (index) {
          case 0:
            return Homepage();
          case 1:
            return ProfileScreen(user: user);
          default:
            return SettingScreen();
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
          "Settings",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CachedNetworkImage(
                height: 250,
                width: 400,
                fit: BoxFit.cover,
                imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4rACgK-pRnKTTBkC2F3D8t0StaaSFdueF2eNqTXXKn8c2VaO-kG9AXCAWjSeXI6mw-fo&usqp=CAU",
              ),
              SettingButton(settingsType: SettingTypes.notification, settingContent: "",),
              const SizedBox(height: 20,),
              const Text(
                "Account information",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25
                ),
              ),
              const SizedBox(height: 20,),
              SettingButton(settingsType: SettingTypes.name, settingContent: user.name,),
              const SizedBox(height: 20,),
              SettingButton(settingsType: SettingTypes.email, settingContent: user.email,),
              const SizedBox(height: 20,),
              SettingButton(settingsType: SettingTypes.password, settingContent: user.password,)
            ],
          ),
        )
      ),
      bottomNavigationBar: BottomNavigation(currentIndex: 2,onItemTapped: onItemTapped,),
    );
  }
}
