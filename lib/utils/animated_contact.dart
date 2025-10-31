import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimatedContact extends StatefulWidget {
  final IconData iconData ;
  final Color iconColor ;
  final String title ;
  final String subtitle ;
  final VoidCallback ontap ;

  const AnimatedContact({super.key,
    required this.iconData ,
    required this.iconColor ,
    required this.title ,
    required this .subtitle,
  required  this.ontap,
  });

  @override
  State<AnimatedContact> createState() => _AnimatedContactState();
}

class _AnimatedContactState extends State<AnimatedContact> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {} ,
      onHover: (val) {
        setState(() {
          isHovering = val;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        decoration: BoxDecoration(
          color: isHovering ? Colors.grey.shade300 : Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: isHovering ? Colors.grey : Colors.white),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(child: Icon(  widget.iconData , color: widget .iconColor ,  size: 22)),
            ),
            SizedBox(width: 12.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(widget.title , style: TextStyle( fontSize: 18.0),),
                Text(widget.subtitle)
              ,

              ],

            ),
          ],
        ),
      ),
    );
  }
}
