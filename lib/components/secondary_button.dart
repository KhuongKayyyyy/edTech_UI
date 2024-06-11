import 'package:edtech_app/utils/app_theme.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget{
  String btnContent;
  SecondaryButton({required this.btnContent});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
              color: AppTheme.inkGrey,
              width: 2
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        width: double.infinity, // Make the button take up the full width
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
            padding: const EdgeInsets.symmetric(vertical: 20), // Adjust the padding for height
          ),
          child: Text(
            btnContent,
            style:const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),
          ),
        ),
      ),
    );
  }
}