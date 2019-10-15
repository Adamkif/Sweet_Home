import 'package:flutter/material.dart';
import 'package:flutter_page_transition/flutter_page_transition.dart';
// import 'package:page_transition/page_transition.dart';
import 'package:sweet_home/src/constants/constants.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:sweet_home/src/widgets/features.dart';

class Home extends StatelessWidget {
  // static const routeHome = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: Color(0xfff9cd78),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.only(
                        top: 47,
                      ),
                      child: Text(
                        'SWEET',
                        style: kSweetTextStyle,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 135,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'HOME',
                        style: kHomeTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'The Smart Home that',
                textAlign: TextAlign.justify,
                style: kBlueTextStyle,
              ),
              Text(
                'looks after your family',
                style: kBlueTextStyle,
              ),
              SizedBox(
                height: 65,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.55,
                child: Image.asset(
                  'images/sweet_home_logo.png',
                  fit: BoxFit.cover,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    PageTransition(
                      type: PageTransitionType.rippleRightUp,
                      duration: Duration(
                        seconds: 1,
                      ),
                      child: Features(),
                    ),
                  );
                },
                borderRadius: BorderRadius.circular(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 273,
                      height: 51,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Explore the features',
                          style: kBoxTextStyle,
                          // textAlign: TextAlign.center,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xffff9a00),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    ClipPath(
                      clipper: TriangleClipper(),
                      child: Container(
                        height: 30,
                        width: 34,
                        color: Color(0xffff9a00),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
