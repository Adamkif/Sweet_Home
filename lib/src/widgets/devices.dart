import 'package:flutter/material.dart';
import 'package:sweet_home/src/common%20widgets/information.dart';

class Devices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Infromation(
      text: 'DIVICES',
      icon: 'images/icon_devices.png',
      informaionText:
          "Access all the devices in the house by simply talking to Sweet Home. Automate tasks and set reminders for events. Send drone to do shopping and so much more.",
    );
  }
}
