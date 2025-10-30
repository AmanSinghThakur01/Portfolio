import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class AnimatedContact extends StatefulWidget {
  const AnimatedContact({super.key});

  @override
  State<AnimatedContact> createState() => _AnimatedContactState();
}

class _AnimatedContactState extends State<AnimatedContact> {
  bool isHovering = false ;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
      },
        onHover:(val){
        setState(() {
          isHovering = val ;
        });
        },
      child: AnimatedContainer(duration: const Duration(milliseconds: 100),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: isHovering ? Colors.grey : Colors.white
          ),
        ),
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
    );
  }
}
