import 'package:edtech_app/utils/app_theme.dart';
import 'package:edtech_app/utils/setting_types.dart';
import 'package:flutter/material.dart';

class SettingButton extends StatelessWidget {
  final String settingsType;
  final String? settingContent; // Allow settingContent to be nullable

  SettingButton({required this.settingsType, this.settingContent});

  @override
  Widget build(BuildContext context) {
    IconData iconData;
    IconData rightIcon;
    switch (settingsType) {
      case SettingTypes.notification:
        iconData = Icons.notifications;
        rightIcon = Icons.arrow_forward_ios;
        break;
      case SettingTypes.name:
        iconData = Icons.person;
        rightIcon = Icons.arrow_forward_ios;
        break;
      case SettingTypes.email:
        iconData = Icons.email;
        rightIcon = Icons.arrow_forward_ios;
        break;
      case SettingTypes.password:
        iconData = Icons.lock;
        rightIcon = Icons.arrow_forward_ios;
        break;
      default:
        iconData = Icons.settings;
        rightIcon = Icons.arrow_forward_ios;
    }

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppTheme.inkGrey, width: 2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: ElevatedButton(
        onPressed: () {
          print("Button Pressed");
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.symmetric(vertical: 20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 20),
            Container(
              decoration: BoxDecoration(
                color: AppTheme.secondaryColor,
                border: Border.all(
                  width: 10,
                  color: AppTheme.secondaryColor,
                ),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Icon(
                iconData,
                color: Colors.white,
                size: 25,
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    settingsType,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  if (settingsType != SettingTypes.notification)
                    Text(
                      settingContent!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: AppTheme.inkGreyDark,
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Icon(
                rightIcon,
              color: AppTheme.inkGrey,
            ),
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
