import 'package:flutter/material.dart';
import 'package:sweet_home/src/common%20widgets/information.dart';

class Security extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Infromation(
      text: 'SECURITY',
      icon: 'images/icon_security.png',
      informaionText:
          "Provide security for the entire house with smart detection and alerting systems. You don’t have to worry any more about the safety of your possessions and loved ones.",
    );
  }
}
