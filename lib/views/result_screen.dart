import 'package:cached_network_image/cached_network_image.dart';
import 'package:edtech_app/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Results",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                  imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlV3uZaKcV8haGq_OggHyHLa04IYa2NzmLxEiGsOOKk8yQa9DnrihOVPW3D0YKfTghY3s&usqp=CAU",
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Congratulations",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: SizedBox(
                  width: 300,
                  child: Center(
                    child: Text(
                      "Congratulations for getting all the answers correct",
                      textAlign: TextAlign.center, // Center align the text
                      style: TextStyle(
                        fontSize: 15,
                        color: AppTheme.inkGrey,
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(),
              Center(
                child: Container(
                  width: 200,
                  // color: Colors.green,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppTheme.secondaryColor
                          ),
                          child: IconButton(
                            onPressed: (){},
                            icon: const FaIcon(
                              FontAwesomeIcons.facebook,
                              color: Colors.white,
                              size: 30,
                            ),
                          )
                      ),
                      const SizedBox(width: 10,),
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppTheme.secondaryColor,
                          ),
                          // color: AppTheme.secondaryColor,
                          child: IconButton(
                            onPressed: (){},
                            icon: const FaIcon(
                              FontAwesomeIcons.instagram,
                              color: Colors.white,
                              size: 30,
                            ),
                          )
                      ),
                      const SizedBox(width: 10,),
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppTheme.secondaryColor
                          ),
                          // color: AppTheme.secondaryColor,
                          child: IconButton(
                            onPressed: (){},
                            icon: const FaIcon(
                              FontAwesomeIcons.google,
                              color: Colors.white,
                              size: 30,
                            ),
                          )
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
