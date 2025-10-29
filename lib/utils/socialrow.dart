import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Socialrow extends StatelessWidget {
  const Socialrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
     mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(FontAwesomeIcons.facebook),
        FaIcon(FontAwesomeIcons.instagram),
        FaIcon(FontAwesomeIcons.twitter),
      ],
    );
  }
}

