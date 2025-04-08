import 'package:flutter/material.dart';
import 'package:smart_student_handbook/modules/ContactDetails/index.dart';
import 'package:smart_student_handbook/modules/Description.dart';
import 'package:smart_student_handbook/modules/MissionVision/index.dart';
import 'package:smart_student_handbook/modules/Resources/index.dart';
import 'package:smart_student_handbook/modules/calendar/index.dart';
import 'package:smart_student_handbook/modules/footer/index.dart';
import 'package:smart_student_handbook/modules/rulesAndRegulations/index.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff70d6ff)),
      ),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              centerTitle: false,
              pinned: true,
              snap: false,
              floating: false,
              expandedHeight: 200.0,
              flexibleSpace: LayoutBuilder(
                builder: (context, constraints) {
                  final double percent = constraints.biggest.height / 100.0;
                  final fontSize = 30.0 * percent.clamp(0.5, 1.0);

                  return FlexibleSpaceBar(
                    centerTitle: true,
                    background: Image(
                      image: AssetImage("assets/image/bnhs_images.jpeg"),
                      fit: BoxFit.cover,
                    ),
                    title: Container(
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Smart Student Handbook",
                        style: TextStyle(
                          fontSize: fontSize,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                          shadows: [
                            Shadow(color: Colors.white, offset: Offset(-1, -1)),
                            Shadow(color: Colors.white, offset: Offset(1, -1)),
                            Shadow(color: Colors.white, offset: Offset(1, 1)),
                            Shadow(color: Colors.white, offset: Offset(-1, 1)),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: Column(
                    spacing: 30,
                    children: [
                      DescriptionModule(),
                      MissionVisionModules(),
                      CalendarModules(),
                      ResourcesModules(),
                      RulesAndRegulationsModules(),
                      ContactDetailsModules(),
                      FooterModules(),
                    ],
                  ),
                );
              }, childCount: 1),
            ),
          ],
        ),
      ),
    );
  }
}
