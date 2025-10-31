import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

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
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => isPressed = true),
      onTapUp: (_) {
        setState(() => isPressed = false);
        widget.ontap();
      },
      onTapCancel: () => setState(() => isPressed = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        decoration: BoxDecoration(
          color: isPressed ? Colors.grey.shade300 : Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade300),
        ),
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            widget.iconWidget,
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.title, style: const TextStyle(fontSize: 18)),
                Text(widget.subtitle),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
