import 'package:flutter/material.dart';

class ResourcesModules extends StatelessWidget {
  const ResourcesModules({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            "Resources",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.5,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 0,
          children: [
            Card.filled(
              color: Color(0xff073b4c),
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                onTap: () {
                  debugPrint("LIBARIES");
                },
                splashColor: Color(0xff073b4c),
                child: SizedBox(
                  height: 160,
                  width: (MediaQuery.sizeOf(context).width / 2) - 10,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Text(
                        "Libraries",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Card.filled(
              color: Color(0xff023e8a),
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                splashColor: Color(0xff023e8a),
                onTap: () {
                  debugPrint("Computer Rooms");
                },
                child: SizedBox(
                  height: 160,
                  width: (MediaQuery.sizeOf(context).width / 2) - 10,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Text(
                        "Computer Rooms",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 0,
          children: [
            Card.filled(
              color: Color(0xff9b2226),
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                onTap: () {
                  debugPrint("Health Clinics");
                },
                splashColor: Color(0xff9b2226),
                child: SizedBox(
                  height: 160,
                  width: (MediaQuery.sizeOf(context).width / 2) - 10,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Text(
                        "Health Clinics",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Card.filled(
              color: Color(0xff240046),
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                splashColor: Color(0xff240046),
                onTap: () {
                  debugPrint("Guidance");
                },
                child: SizedBox(
                  height: 160,
                  width: (MediaQuery.sizeOf(context).width / 2) - 10,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Text(
                        "Guidance",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
