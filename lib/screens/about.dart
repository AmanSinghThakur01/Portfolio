import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/animated_contact.dart';
import 'package:portfolio/utils/socialrow.dart';
import 'package:url_launcher/url_launcher.dart';

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
        color: Colors.white,
      ),
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          Image.asset("assets/dev.png", height: 156),
          const Text(
            " Aman",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
          const SelectableText(
            "I am a Flutter Developer seeking an internship or full-time opportunity in Indore. I build cross-platform mobile applications using the Flutter framework, with Provider for state management and Firebase for backend services and integrations. ",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
          ),
          Container(
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.tealAccent.shade200,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              'Flutter Developer',
              style: TextStyle(fontSize: 16, color: Colors.grey.shade900),
            ),
          ),
          Divider(),

          AnimatedContact(
            iconWidget: const Icon(FontAwesomeIcons.github),
            title: "Github",
            subtitle: "Aman Singh Thakur01",
            iconColor: Colors.indigo,
            ontap: () async {
              final url = Uri.parse("https://github.com/AmanSinghThakur01");
              if (await canLaunchUrl(url)) {
                await launchUrl(url, mode: LaunchMode.externalApplication);
              } else {
                throw 'Could not launch $url';
              }
            },
          ),

          AnimatedContact(
            iconWidget: Icon(FontAwesomeIcons.linkedinIn),
            title: "Linkedin",
            subtitle: " Aman Singh Thakur",
            ontap: () async {
              final url = Uri.parse("https://www.linkedin.com/in/aman-singh-thakur-a42308303/");
              if (await canLaunchUrl(url)) {
                await launchUrl(url, mode: LaunchMode.externalApplication);
              } else {
                throw 'Could not launch $url';
              }
            },

            iconColor: Colors.indigo,
          ),
          AnimatedContact(
            iconWidget: Image.asset("assets/instagram.png", height: 25,),

            title: "Instagram",  
            subtitle: "thakur.amansinghh",
            ontap: () async {
              final url = Uri.parse("https://www.instagram.com/thakur.amansinghh?igsh=MTMxYmdwMGgxYjQ5Yg%3D%3D");
              if (await canLaunchUrl(url)) {
                await launchUrl(url, mode: LaunchMode.externalApplication);
              } else {
                throw 'Could not launch $url';
              }
            },

            iconColor: Colors.indigo,
          ),
          Socialrow(),
        ],
      ),
    );
  }
}
