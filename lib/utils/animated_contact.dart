import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class AnimatedContact extends StatefulWidget {
  final Widget iconWidget;
  final Color iconColor;
  final String title;
  final String subtitle;
  final VoidCallback ontap;

  const AnimatedContact({
    super.key,
    required this.iconWidget,
    required this.iconColor,
    required this.title,
    required this.subtitle,
    required this.ontap,
  });

  @override
  State<AnimatedContact> createState() => _AnimatedContactState();
}

class _AnimatedContactState extends State<AnimatedContact> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(

      onEnter: (_) {
        setState(() {
          isActive = true;
        });
      },
      onExit: (_) {
        setState(() {
          isActive = false;
        });
      },

      child: GestureDetector(

        onTapDown: (_) {
          setState(() {
            isActive = true;
          });
        },
        onTapUp: (_) {
          setState(() {
            isActive = false;
          });
          widget.ontap();
        },
        onTapCancel: () {
          setState(() {
            isActive = false;
          });
        },

        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),

          decoration: BoxDecoration(
            color: isActive ? Colors.grey.shade300 : Colors.white,
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(
              color: isActive ? Colors.grey : Colors.grey.shade300,
            ),
          ),

          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Card(child: widget.iconWidget),
              ),
              SizedBox(width: 12.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Text(widget.subtitle),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}