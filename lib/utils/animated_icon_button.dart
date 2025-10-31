import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimatedIconButton extends StatefulWidget {
  final Widget iconWidget ;
  final Color iconColor ;
  final String title ;
  final String subtitle ;
  final VoidCallback ontap ;

  const AnimatedIconButton({super.key
  , required this.iconWidget ,
    required this.iconColor ,
    required this.title ,
    required this .subtitle,
    required  this.ontap,
  });

  @override
  State<AnimatedIconButton> createState() => _AnimatedIconButtonState();
}

class _AnimatedIconButtonState extends State<AnimatedIconButton> {
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
              child: Card( child: widget.iconWidget,)
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
