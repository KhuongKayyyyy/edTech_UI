import 'package:cached_network_image/cached_network_image.dart';
import 'package:edtech_app/components/primary_button.dart';
import 'package:edtech_app/utils/app_theme.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget{
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
          "Payment",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child:  Column(
          children: [
            const SizedBox(height: 50,),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(
                  imageUrl: "https://blush-design.imgix.net/collections/i6aPXTYbSUdZEveWhgik/a22d18a9-6c9d-4a9e-98a8-9c77ff34a309.png?w=800&h=450&fit=crop&auto=compress&cs=srgb",
                  height: 350,
                  width: double.infinity,
                fit: BoxFit.cover
              ),
            ),
            const SizedBox(height: 20,),
            const Text(
              "No payment method",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26
              ),
            ),
            const SizedBox(height: 20,),
            Text(
                "You can buy the course now",
              style: TextStyle(
                color: AppTheme.inkGreyDark
              ),
            ),
            Text(
              "Continue to Payment",
              style: TextStyle(
                  color: AppTheme.inkGreyDark
              ),
            ),
            const SizedBox(height: 30,),
            PrimaryButton(btnText: "Continue", onPressed: (){})
          ],
        ),
      )
    );
  }
}