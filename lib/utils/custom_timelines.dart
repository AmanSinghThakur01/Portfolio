import 'package:flutter/material.dart';
import 'package:portfolio/models/education_model.dart';
class CustomTimelines extends StatefulWidget {
  final EducationModel education ;
  const CustomTimelines({super.key,
    required this.education
  });

  @override
  State<CustomTimelines> createState() => _CustomTimelinesState();
}

class _CustomTimelinesState extends State<CustomTimelines> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Padding(padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(
        widget.education.date,
        style: const TextStyle(
          fontSize: 13,
          color: Colors.indigo,
          fontWeight: FontWeight.w500,
        ),
      ),
        const SizedBox(height: 6),
        Text(
          widget.education.title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          widget.education.subtitle,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey.shade700,
          ),
        ),]
      ),
      ),
    );
  }
}
