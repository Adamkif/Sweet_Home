import 'package:flutter/rendering.dart';

final kSweetTextStyle = TextStyle(
  fontSize: 92,
  fontFamily: 'Mistral',
  color: Color(0xffffffff),
  shadows: [
    Shadow(
      color: Color(0x29000000),
      blurRadius: 6,
      offset: Offset(0, 3),
    ),
  ],
);

final kHomeTextStyle = kSweetTextStyle.copyWith(
  fontSize: 60,
);

final kBlueTextStyle = kSweetTextStyle.copyWith(
  fontSize: 20,
  fontFamily: 'Gabriola',
  color: Color(0xff26a4fb),
  letterSpacing: 1,
);

final kBoxTextStyle = kBlueTextStyle.copyWith(
  fontSize: 29,
  color: Color(0xffffffff),
  letterSpacing: 1.45,
);

final kOrangeTextStyle = TextStyle(
  fontSize: 30,
  fontFamily: 'SF-Compact-Display-Bold',
  color: Color(0xffff9a00),
);

final kGrayTextStyle = kBlueTextStyle.copyWith(
  fontSize: 16,
  color: Color(0xff808080),
  letterSpacing: 1.5,
);

final kMeetFamilyTextStyle = kBlueTextStyle.copyWith(
  fontSize: 30,
  color: Color(0xffffffff),
  letterSpacing: 2,
);

final kWhiteTextStyle = kBlueTextStyle.copyWith(
  fontSize: 20,
  color: Color(0xffffffff),
);
