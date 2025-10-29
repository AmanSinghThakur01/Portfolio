import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      margin: EdgeInsets.only(
        top: 20.0,
      ),
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
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.yellow.shade400,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text('Flutter Developer'),
          ),
          Divider(),
          Container(
            child: Row(

              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Card(child: Icon(FontAwesomeIcons.github, size: 20,)),
                ),
                SizedBox(width: 12.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Github"),
                    Text("Aman Singh Thakur01"),
                  ],
                )
              ],
            ),
          ),
          Container(
            child: Row(

              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Card(child: Icon(FontAwesomeIcons.github, size: 20,)),
                ),
                SizedBox(width: 12.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Github"),
                    Text("Aman Singh Thakur01"),
                  ],
                )
              ],
            ),
          )
          ,

         

        ],
      ),
    );
  }
}
