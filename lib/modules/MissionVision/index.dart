import 'package:flutter/material.dart';
import 'package:smart_student_handbook/modules/MissionVision/mission.dart';
import 'package:smart_student_handbook/modules/MissionVision/vision.dart';

class MissionVisionModules extends StatelessWidget {
  const MissionVisionModules({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 0,
      children: [
        Card.outlined(
          clipBehavior: Clip.hardEdge,
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MissionModules()),
              );
            },
            // splashColor: Color(0xff073b4c),
            child: SizedBox(
              height: 60,
              width: (MediaQuery.sizeOf(context).width / 2) - 10,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "Mission",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ),
        Card.outlined(
          clipBehavior: Clip.hardEdge,
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const VisionModules()),
              );
            },
            child: SizedBox(
              height: 60,
              width: (MediaQuery.sizeOf(context).width / 2) - 10,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "Vision",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
