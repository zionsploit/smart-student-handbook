import 'package:flutter/material.dart';

class RulesAndRegulationsModules extends StatelessWidget {
  const RulesAndRegulationsModules({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0),
      child: Card.filled(
        color: Color(0xff2b2d42),
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          splashColor: Color(0xff2b2d42),
          onTap: () {
            debugPrint("Rules and Regulations");
          },
          child: SizedBox(
            height: 100,
            width: (MediaQuery.sizeOf(context).width) - 10,
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(
                  "Rules and Regulations",
                  style: TextStyle(
                    fontSize: 20,
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
    );
  }
}
