import 'package:flutter/material.dart';
import 'package:sweet_home/src/common%20widgets/family.dart';
import 'package:sweet_home/src/widgets/features.dart';
import 'package:sweet_home/src/widgets_family/father.dart';

class GrandMother extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Family(
      orangeText: 'Grandma',
      nameImage: 'images/characters_grandma.png',
      nameRouteRight: Father(),
      nameRouteLeft: Features(),
    );
  }
}
