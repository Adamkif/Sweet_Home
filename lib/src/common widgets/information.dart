import 'package:flutter/material.dart';
import 'package:flutter_page_transition/flutter_page_transition.dart';
import 'package:flutter_page_transition/page_transition_type.dart';
import 'package:sweet_home/src/constants/constants.dart';
import 'package:sweet_home/src/widgets/features.dart';
import 'package:sweet_home/src/widgets_family/grand_mother.dart';
import 'arrow_buttons.dart';
import 'arrow_buttons_without_route.dart';
import 'image_icons.dart';

class Infromation extends StatelessWidget {
  final Widget routeWidget;

  final String icon;
  final String text;
  final String informaionText;

  Infromation({this.routeWidget, this.icon, this.text, this.informaionText});

  Widget centerEllement({double top, double bottom, Widget child}) {
    return Container(
      margin: EdgeInsets.only(top: top),
      alignment: Alignment.center,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Positioned(
                left: 22,
                top: 20,
                child: ArrowButtons(
                  nameButton: 'images/arrow_left.png',
                  routeWidget: Features(),
                  slideEffect: PageTransitionType.slideRight,
                ),
              ),
              Column(
                children: <Widget>[
                  centerEllement(
                    top: 20,
                    child: ImageIcons(
                      icon: icon,
                    ),
                  ),
                  centerEllement(
                    top: 22,
                    child: Text(
                      text,
                      style: kOrangeTextStyle,
                    ),
                  ),
                  Wrap(
                    alignment: WrapAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 180,
                        margin: EdgeInsets.only(top: 43),
                        child: Text(
                          informaionText,
                          style: kGrayTextStyle,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ArrowButtonsWithoutRoute(
                    nameButton: 'images/arrow_down.png',
                  ),
                  Container(
                    height: 375,
                    child: Image(
                      fit: BoxFit.contain,
                      height: 260,
                      image: AssetImage(
                        'images/charactersgroup.png',
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.pushReplacement(
                      context,
                      PageTransition(
                        type: PageTransitionType.fadeIn,
                        duration: Duration(
                          milliseconds: 300,
                        ),
                        child: GrandMother(),
                      ),
                    ),
                    child: Container(
                      height: 80,
                      width: double.infinity,
                      color: Color(0xffff9a00),
                      alignment: Alignment.center,
                      child: Text(
                        'Meet The Family >',
                        style: kMeetFamilyTextStyle,
                      ),
                    ),
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
