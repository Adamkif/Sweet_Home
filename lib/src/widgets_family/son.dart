import 'package:flutter/material.dart';
import 'package:sweet_home/src/common%20widgets/family.dart';
import 'package:sweet_home/src/widgets_family/mother.dart';

import 'grand_mother.dart';

class Son extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Family(
      nameImage: 'images/charactersson.png',
      orangeText: 'Son',
      nameRouteRight: GrandMother(),
      nameRouteLeft: Mother(),
    );
  }
}
