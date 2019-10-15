import 'package:flutter/material.dart';
import 'package:sweet_home/src/common%20widgets/family.dart';
import 'package:sweet_home/src/widgets_family/grand_mother.dart';
import 'mother.dart';

class Father extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Family(
      nameImage: 'images/father.png',
      orangeText: 'Father',
      nameRouteLeft: GrandMother(),
      nameRouteRight: Mother(),
    );
  }
}
