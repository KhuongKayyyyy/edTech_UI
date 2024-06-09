import 'package:edtech_app/components/searchbar_custom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget{
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Expanded(
              flex: 5,
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello,",
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 20
                    ),
                  ),
                  Text(
                    "Nguyen Dat Khuong",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 27
                    ),
                  )
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
                  onPressed: (){
                    print("Notification Pressed");
                  },
                  icon: const Icon(Icons.notifications_on_outlined),
                ),
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10,),
              SearchBarCustom(),
              SizedBox(height: 10,),
              Row(
                children: [
                  const Text("Category: "),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5), // Add horizontal margin
                          child: ElevatedButton(
                            onPressed: () {
                              print("Category pressed");
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                              backgroundColor: Color(0xFF65AAEA),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Text(
                                "#CSS",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5), // Add horizontal margin
                          child: ElevatedButton(
                            onPressed: () {
                              print("Category pressed");
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                              backgroundColor: Color(0xFF65AAEA),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Text(
                                "#Swift",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5), // Add horizontal margin
                          child: ElevatedButton(
                            onPressed: () {
                              print("Category pressed");
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                              backgroundColor: Color(0xFF65AAEA),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Text(
                                "#UI",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
