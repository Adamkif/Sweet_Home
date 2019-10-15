import 'package:flutter/material.dart';

class ImageIcons extends StatelessWidget {
  final String icon;
  ImageIcons({this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        icon,
        width: 60,
        height: 60,
      ),
    );
  }
}
