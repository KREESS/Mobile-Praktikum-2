import 'package:flutter/material.dart';

Widget buildStatCard(String title, int count, Color color) {
  return AnimatedContainer(
    duration: Duration(milliseconds: 300), // Smooth transition for color change
    curve: Curves.easeInOut, // Smooth curve animation
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: color.withOpacity(0.8), // Darker background color with opacity
    ),
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white, // White text for better contrast
            ),
          ),
          SizedBox(height: 10),
          Text(
            '$count',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.white, // Keep the count text white for clarity
            ),
          ),
        ],
      ),
    ),
  );
}
