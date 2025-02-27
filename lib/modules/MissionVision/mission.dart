import 'package:flutter/material.dart';

class MissionModules extends StatelessWidget {
  const MissionModules({super.key});

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
                    title: Text(
                      "Mission",
                      style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  );
                },
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    spacing: 20,
                    children: [
                      Text(
                        "To protect and promote the right of every Filipino to quality, equitable, culture-based, and complete basic education where:",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "Students learn in a child-friendly, gender sensitive, safe and motivating environment.",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "Teachers facilitate learning and constantly nurture every learner.",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "Administrator and staff, as stewards of the institution, ensure an enabling and supportive environment for effective learning to happen.",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "Family, community and other stakeholders are actively engaged and share responsibility for developing lifelong learners.",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
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
