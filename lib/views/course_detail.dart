import 'package:cached_network_image/cached_network_image.dart';
import 'package:edtech_app/components/primary_button.dart';
import 'package:edtech_app/model/course.dart';
import 'package:edtech_app/utils/app_theme.dart';
import 'package:flutter/material.dart';

class CourseDetail extends StatelessWidget {
  Course course;

  CourseDetail({required this.course});

  final String courseIntroduction =
      "You can launch a new career in web development today by learning HTML & CSS. You don't need a computer science degree or expensive software. All you need is a computer, a bit of time, a lot of determination, and a teacher you trust.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Colors.grey,
                        width: 2
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                )
            ),
          ],
        ),
        title: Text(
          course.name,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: CachedNetworkImage(
                          imageUrl: course.imgUrl,
                          fit: BoxFit.cover,
                          placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                        ),
                      ),
                      Positioned(
                          bottom: 8,
                          right: 8,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                                color: AppTheme.secondaryColor,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Text(
                              "\$${course.price}",
                              style: const TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          )
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "About the course",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    courseIntroduction,
                    style: const TextStyle(
                        fontSize: 18
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Duration",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32
                    ),
                  ),
                  Text(
                    "${course.hour.toString()} hour",
                  ),
                  const SizedBox(height: 100), // Add some space at the bottom for the button
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: PrimaryButton(btnText: "Add to cart"),
          ),
        ],
      ),
    );
  }
}
