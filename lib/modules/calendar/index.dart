import 'package:flutter/material.dart';
import 'package:smart_student_handbook/modules/calendar/SfCalendar.dart';

class CalendarModules extends StatelessWidget {
  const CalendarModules({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "Event",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.5,
            ),
          ),
        ),
        SizedBox(height: 500, child: Card.outlined(child: CalendarEvents())),
      ],
    );
  }
}
