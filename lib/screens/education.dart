import 'package:flutter/material.dart';
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

    return Container(
      margin: EdgeInsets.all(
         20.0,
      ),
      width: screenWidth < 900 ? screenWidth * 0.9 : screenWidth * 0.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(" Education",style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          Timeline.tileBuilder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              builder: TimelineTileBuilder.connected(itemCount: 4 , contentsAlign: ContentsAlign.alternating,
          contentsBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  children: [
                    Text("20 March 2021" , style: TextStyle(fontSize: 12, color: Colors.indigo),),
                    Text("Passed 10th",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                    Text("Scored 82% in Class 10 from St. Paul School, Jawar ", style: TextStyle(fontSize: 14, color: Colors.grey.shade700),),
                  ],
                )
              ),
            );
          },
                indicatorBuilder: (context, index) {
                  return DotIndicator(color: Colors.tealAccent,);
                },
connectorBuilder: (context, index, type) {
  return SolidLineConnector();
},
          )
          )
        ],
      ),
    );
  }
}