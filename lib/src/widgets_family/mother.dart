import 'package:flutter/material.dart';
import 'package:sweet_home/src/common%20widgets/family.dart';
import 'package:sweet_home/src/widgets_family/father.dart';
import 'package:sweet_home/src/widgets_family/son.dart';

class Mother extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Family(
      orangeText: 'Mother',
      nameImage: 'images/mother.png',
      nameRouteRight: Son(),
      nameRouteLeft: Father(),
    );
  }
}
