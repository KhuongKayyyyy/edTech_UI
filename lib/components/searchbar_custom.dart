import 'package:flutter/material.dart';

class SearchBarCustom extends StatefulWidget {
  @override
  _SearchBarCustomState createState() => _SearchBarCustomState();
}

class _SearchBarCustomState extends State<SearchBarCustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[400]!), // Border color
        borderRadius: BorderRadius.circular(8), // Border radius
      ),
      child: Row(
        children: [
          const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search course',
                  border: InputBorder.none, // Remove TextField border
                ),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Implement search functionality here
            },
          ),
        ],
      ),
    );
  }
}
