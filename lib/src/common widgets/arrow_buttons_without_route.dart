import 'package:flutter/material.dart';

class ArrowButtonsWithoutRoute extends StatelessWidget {
  final String nameButton;

  ArrowButtonsWithoutRoute({
    this.nameButton,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Ink.image(
        width: 40,
        height: 40,
        image: AssetImage(nameButton),
      ),
    );
  }
}
