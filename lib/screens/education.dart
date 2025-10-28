import 'package:flutter/material.dart';

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
      width: screenWidth < 900 ? screenWidth * 0.9 : screenWidth * 0.3,
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Image.asset("assets/dev.png", height: 156),
          const Text(
            " Aman",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
          const Text(
            "I am a Flutter Developer seeking an internship or full-time opportunity in Indore. ",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.yellow.shade400,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text('Flutter Developer'),
          )
        ],
      ),
    );
  }
}
