import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/animated_icon_button.dart';
class Socialrow extends StatelessWidget {
  const Socialrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
     mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedIconButton(iconData: FontAwesomeIcons.facebook, ontap: (){},),
        AnimatedIconButton(iconData: FontAwesomeIcons.x, ontap: (){},),
        AnimatedIconButton(iconData: Icons.mail, ontap: (){},),

      ],
    );
  }
}

