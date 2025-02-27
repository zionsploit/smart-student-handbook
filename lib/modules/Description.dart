import 'package:flutter/material.dart';

class DescriptionModule extends StatelessWidget {
  const DescriptionModule({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        "Your go-to app for Baringcucurong National High School! Access schedules, policies, resources, and updates—all in one place. Stay organized and connected effortlessly!",
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
      ),
    );
  }
}
