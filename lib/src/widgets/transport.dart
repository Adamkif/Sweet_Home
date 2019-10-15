import 'package:flutter/material.dart';
import 'package:sweet_home/src/common%20widgets/information.dart';

class Transport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Infromation(
      text: 'TRANSPORT',
      icon: 'images/icon_transport.png',
      informaionText:
          "Sweet Home flawlessly communicates with your smart cars and smart bikes. Let your car be controlled by Sweet Home and stop worrying about driving the kids to school.",
    );
  }
}
