import 'package:flutter/material.dart';
import 'package:flutter_page_transition/flutter_page_transition.dart';
import 'package:sweet_home/src/constants/constants.dart';

class Family extends StatefulWidget {
  final String nameImage;
  final String orangeText;
  final Widget nameRouteRight;
  final Widget nameRouteLeft;
  Family({
    this.nameImage,
    this.orangeText,
    this.nameRouteRight,
    this.nameRouteLeft,
  });

  @override
  _FamilyState createState() => _FamilyState();
}

class _FamilyState extends State<Family> {
  bool visibleButton = true;
  void _clickMe(BuildContext context) {
    showDialog(
        context: context,

        // barrierDismissible: false,
        builder: (context) {
          return Wrap(
            // alignment: WrapAlignment.spaceBetween,
            // crossAxisAlignment: WrapCrossAlignment.center,
            // runAlignment: WrapAlignment.spaceEvenly,
            children: <Widget>[
              AlertDialog(
                elevation: 0,
                backgroundColor: Color(0xff3a759e).withOpacity(0.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                contentPadding: EdgeInsets.all(0.0),
                content: Container(
                  width: 300,
                  padding: EdgeInsets.all(15),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                            onPressed: () => Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.slideParallaxRight,
                                duration: Duration(
                                  milliseconds: 300,
                                ),
                                child: widget.nameRouteLeft,
                              ),
                            ),
                          ),
                          Text(
                            widget.orangeText,
                            style: kOrangeTextStyle,
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                            onPressed: () => Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.slideParallaxLeft,
                                duration: Duration(
                                  milliseconds: 300,
                                ),
                                child: widget.nameRouteRight,
                              ),
                            ),
                            // },
                          ),
                        ],
                      ),
                      Text(
                        'Can enjoy the comfort of the house and control everything simly just by talking.All devices are voice cotrolled, so she can rest in her chair',
                        textAlign: TextAlign.center,
                        style: kWhiteTextStyle,
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(5),
          child: InkWell(
            child: Image(
              width: double.infinity,
              fit: BoxFit.cover,
              image: AssetImage(
                widget.nameImage,
              ),
            ),
            onTap: () => _clickMe(context),
          ),
        ),
      ),
    );
  }
}
