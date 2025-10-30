import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/animated_contact.dart';
import 'package:portfolio/utils/socialrow.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(top: 20.0),
      width: screenWidth < 900 ? screenWidth * 0.9 : screenWidth * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white, ),
      padding: EdgeInsets.all(30),
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
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.tealAccent.shade200,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text( 'Flutter Developer',style: TextStyle(fontSize: 16, color: Colors.grey.shade900 ),),
          ),
          Divider(),
          Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Card(child: Icon(FontAwesomeIcons.github, size: 20)),
                ),
                SizedBox(width: 12.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text("Github"), Text("Aman Singh Thakur01")],
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Card(child: Icon(FontAwesomeIcons.github, size: 20)),
                ),
                SizedBox(width: 12.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text("Github"), Text("Aman Singh Thakur01")],
                ),
              ],
            ),
          ),
          AnimatedContact(),
          Socialrow(),
        ],
      ),
    );
  }
}
