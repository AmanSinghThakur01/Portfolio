import 'package:flutter/material.dart';
import 'package:portfolio/models/education_model.dart';
import 'package:portfolio/utils/custom_timelines.dart';
import 'package:timelines_plus/timelines_plus.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final educationList = [
      EducationModel(
        date: "year 2022 - 2023",
        title: " passed 12th  ",
        subtitle:
            " I have successfully completed Class 12 with a 75% grade from St. Paul Higher Secondary School.",
      ),
      EducationModel(
        date: "2023 – Present",
        title: " Pursuing BCA  ",
        subtitle:
            " Pursuing BCA from Makhan lal Chaturvedi National University of Journalism and Communication, Bhopal.",
      ),
      EducationModel(
        date: "2024",
        title: "C & C++ Programming",
        subtitle:
            "Completed C and C++ programming course from CodeBetter, Indore.",
      ),

      EducationModel(
        date: "2025",
        title: "Flutter Development",
        subtitle:
            "Completed Flutter Development course from The Prime Step, Indore.",
      ),
    ];

    return Container(
      margin: EdgeInsets.all(20.0),
      width: screenWidth < 900 ? screenWidth * 0.9 : screenWidth * 0.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            " Education",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          Timeline.tileBuilder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            builder: TimelineTileBuilder.connected(
              itemCount: educationList.length,
              contentsAlign: ContentsAlign.alternating,
              contentsBuilder: (context, index) =>
              CustomTimelines(education: educationList[index])
              ,
              indicatorBuilder: (context, index) {
                return DotIndicator(color: Colors.tealAccent, size: 14,);
              },
              connectorBuilder: (context, index, type) {
                return SolidLineConnector(thickness: 2,);
              },
            ),
          ),
        ],
      ),
    );
  }
}
