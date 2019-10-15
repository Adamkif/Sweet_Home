import 'package:flutter/material.dart';
import 'package:flutter_page_transition/flutter_page_transition.dart';
import 'package:sweet_home/src/common%20widgets/arrow_buttons.dart';
import 'package:sweet_home/src/common%20widgets/image_icons.dart';
import 'package:sweet_home/src/constants/constants.dart';
import 'package:sweet_home/src/widgets/comfort.dart';
import 'package:sweet_home/src/widgets/privacy.dart';
import 'package:sweet_home/src/widgets/security.dart';

import 'devices.dart';
import 'home.dart';
import 'transport.dart';

class Features extends StatelessWidget {
  static const routeFeatures = 'Features';

  Widget columnText({
    String text,
    Widget routeName,
    double top = 46,
    @required BuildContext context,
  }) {
    return InkWell(
      onTap: () => Navigator.pushReplacement(
        context,
        PageTransition(
          type: PageTransitionType.slideInLeft,
          duration: Duration(
            seconds: 1,
          ),
          child: routeName,
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(top: top, bottom: 48),
        alignment: Alignment.center,
        child: Container(
          child: Text(
            text,
            style: kOrangeTextStyle,
          ),
        ),
      ),
    );
  }

  Widget columnIcons({String icon, double top = 100}) {
    return Container(
      margin: EdgeInsets.only(
        left: 30,
        top: top,
      ),
      child: Column(
        children: <Widget>[
          ImageIcons(
            icon: icon,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  columnIcons(
                    icon: 'images/icon_security.png',
                  ),
                  columnIcons(icon: 'images/icon_transport.png', top: 44),
                  columnIcons(icon: 'images/icon_privacy.png', top: 44),
                  columnIcons(icon: 'images/icon_devices.png', top: 44),
                  columnIcons(icon: 'images/icon_comfort.png', top: 44),
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      top: 26,
                    ),
                    alignment: Alignment.center,
                    child: ArrowButtons(
                      nameButton: 'images/arrow_up.png',
                      routeWidget: Home(),
                      slideEffect: PageTransitionType.slideDown,
                    ),
                  ),
                  columnText(
                    text: 'SECURITY',
                    context: context,
                    routeName: Security(),
                  ),
                  columnText(
                    text: 'TRANSPORT',
                    context: context,
                    top: 20,
                    routeName: Transport(),
                  ),
                  columnText(
                    text: 'PRIVACY',
                    context: context,
                    top: 20,
                    routeName: Privacy(),
                  ),
                  columnText(
                    context: context,
                    text: 'DEVICES',
                    top: 20,
                    routeName: Devices(),
                  ),
                  columnText(
                    text: 'COMFORT',
                    context: context,
                    top: 20,
                    routeName: Comfort(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
