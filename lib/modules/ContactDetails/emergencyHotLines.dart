import 'package:flutter/material.dart';

class Emergencyhotlines extends StatelessWidget {
  const Emergencyhotlines({super.key});

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {
          debugPrint("Health Clinics");
        },
        child: SizedBox(
          width: (MediaQuery.sizeOf(context).width),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Emergeny Hotlines:",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(
                  "MDRRMC: 0927-632-3637",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(
                  "PNP: 0998-598-5086",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(
                  "BFP: 0917-187-4911",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
