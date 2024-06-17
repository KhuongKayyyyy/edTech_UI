import 'package:edtech_app/utils/app_theme.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String btnText;
  final VoidCallback onPressed;  // Add this line

  PrimaryButton({required this.btnText, required this.onPressed});  // Update constructor

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ElevatedButton(
        onPressed: onPressed,  // Update this line
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: AppTheme.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          fixedSize: const Size(double.infinity, 56), // Set fixed size here
        ),
        child: Center(
          child: Text(
            btnText,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
