import 'package:flutter/material.dart';
import 'package:smart_student_handbook/modules/ContactDetails/emergencyHotLines.dart';

class ContactDetailsModules extends StatelessWidget {
  const ContactDetailsModules({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Contact Details",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.5,
            ),
          ),
          Emergencyhotlines(),
        ],
      ),
    );
  }
}
