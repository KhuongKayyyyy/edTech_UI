import 'package:cached_network_image/cached_network_image.dart';
import 'package:edtech_app/components/course_detail.dart';
import 'package:edtech_app/model/course.dart';
import 'package:edtech_app/utils/app_theme.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  final Course course;

  const CourseItem({Key? key, required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("Course pressed");
        Navigator.push(context,
        MaterialPageRoute(
            builder: (context) => CourseDetail(course: course,)
        ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey[400]!,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 195,
              width: double.infinity,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned.fill(
                    child: ClipRRect(
                      borderRadius:const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      child: CachedNetworkImage(
                        imageUrl: course.imgUrl,
                        fit: BoxFit.cover,
                        placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                        errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 8,
                      right: 8,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                            color: AppTheme.secondaryColor,
                            borderRadius:BorderRadius.circular(10)
                        ),
                        child: Text(
                          "\$${course.price}",
                          style:const TextStyle(
                            color: Colors.white
                          ),
                        ),
                      )
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10,),
                  Text(
                    "${course.hour} hour",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppTheme.success,
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Text(
                    course.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Text(course.overview),
                  const SizedBox(height: 10,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
