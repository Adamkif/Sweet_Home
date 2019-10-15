import 'package:flutter/material.dart';
import 'package:sweet_home/src/common%20widgets/information.dart';

class Privacy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Infromation(
      text: 'PRIVACY',
      icon: 'images/icon_privacy.png',
      informaionText:
          "Keep all your personal data in the Sweet Home cloud and securely access all your videos, photos and documents wherever you are. Set privileges for all the members of the family.",
    );
  }
}
