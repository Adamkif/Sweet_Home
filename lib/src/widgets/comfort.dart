import 'package:flutter/material.dart';
import 'package:sweet_home/src/common%20widgets/information.dart';

class Comfort extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Infromation(
      text: 'COMFORT',
      icon: 'images/icon_comfort.png',
      informaionText:
          "Let Sweet Home set the best temperature at home in all the rooms at all times. Heating will turn off automatically when it is not needed and heat up the flat before you get home.",
    );
  }
}
