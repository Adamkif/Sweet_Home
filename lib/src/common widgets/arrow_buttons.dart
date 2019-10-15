import 'package:flutter/material.dart';
import 'package:flutter_page_transition/flutter_page_transition.dart';

class ArrowButtons extends StatelessWidget {
  final String nameButton;
  final Widget routeWidget;
  final PageTransitionType slideEffect;
  ArrowButtons({this.nameButton, this.routeWidget, this.slideEffect});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Ink.image(
        width: 40,
        height: 40,
        image: AssetImage(nameButton),
        child: InkWell(
          onTap: () {
            Navigator.pushReplacement(
              context,
              PageTransition(
                type: slideEffect,
                duration: Duration(
                  milliseconds: 300,
                ),
                child: routeWidget,
              ),
            );
          },
        ),
      ),
    );
  }
}
