import 'package:flutter/material.dart';
import 'package:karaoke/res/color.dart';

import '../utils/default_size.dart';

//Use defaultSize to set height and width of widgets
DefaultSize defaultSize = DefaultSize();

///Use this Height in [SizedBox]
double HEIGHT_1 = defaultSize.screenHeight * .02;
double HEIGHT_2 = defaultSize.screenHeight * .05;
double HEIGHT_3 = defaultSize.screenHeight * .06;
double HEIGHT_4 = defaultSize.screenHeight * .07;
double HEIGHT_5 = defaultSize.screenHeight * .1;

double WIDTH_1 = defaultSize.screenWidth * .03;
double WIDTH_2 = defaultSize.screenWidth * .05;
double WIDTH_3 = defaultSize.screenWidth * .06;
double WIDTH_4 = defaultSize.screenWidth * .07;
double WIDTH_5 = defaultSize.screenWidth * .1;
double WIDTH_6 = defaultSize.screenWidth * .2;

///Use this padding while using [EdgeInsets.symmetric(horizontal: )]
double HORIZONTAL_PADDING = defaultSize.screenWidth * .05;

EdgeInsets DEFAULT_HORIZONTAL_PADDING = EdgeInsets.symmetric(
  horizontal: HORIZONTAL_PADDING,
);

//Border Radius Of Button
BorderRadius BORDER_CIRCULAR_RADIUS = BorderRadius.circular(
  defaultSize.screenWidth * .03,
);

///Use this [TextStyle] for Headings
TextStyle? headingTextStyle(BuildContext context) {
  return Theme.of(context).textTheme.headline4?.copyWith(
        fontSize: defaultSize.screenWidth * .075,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      );
}

///Use this [TextStyle] for subTitles
TextStyle? subTitleTextStyle(BuildContext context) {
  return Theme.of(context).textTheme.headline4?.copyWith(
        fontSize: defaultSize.screenWidth * .055,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      );
}

///Use this [TextStyle] for simple text
TextStyle? labelTextStyle(BuildContext context) {
  return Theme.of(context).textTheme.bodyText1?.copyWith(
        fontSize: defaultSize.screenWidth * .035,
        fontWeight: FontWeight.normal,
        color: Colors.black,
        letterSpacing: 0.1,
      );
}

///Use this [TextStyle] for hint text
TextStyle? hintTextStyle(BuildContext context) {
  return Theme.of(context).textTheme.bodyText1?.copyWith(
        fontSize: defaultSize.screenWidth * .035,
        fontWeight: FontWeight.normal,
        color: Colors.grey,
        letterSpacing: 0.1,
      );
}

///Use this [TextStyle] for button text
TextStyle? buttonTextStyle(BuildContext context) {
  return Theme.of(context).textTheme.bodyText2?.copyWith(
        fontSize: defaultSize.screenWidth * .045,
        fontWeight: FontWeight.w700,
        color: Colors.white,
        letterSpacing: 0.1,
      );
}

//RegEx for Email
RegExp getEmailRegExp() {
  return RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
}

//RegEx for Name
RegExp getFullNameExp() {
  return RegExp(r"^[a-zA-Z]{4,}(?: [a-zA-Z]+){0,2}$");
}

//RegEx for Phone Number
RegExp getPhoneNumberExp() {
  return RegExp(r"^(?:[+0]9)?[0-9]$");
}

//RegEx for Phone Number
RegExp getUsernameExp() {
  return RegExp(r"^(?=[a-zA-Z0-9._]{8,20}$)(?!.*[_.]{2})[^_.].*[^_.]$");
}

//Vertical SizedBox Between Widgets
SizedBox SB_BY_4 = SizedBox(
  height: HEIGHT_1 / 4,
);
SizedBox SB_Half = SizedBox(
  height: HEIGHT_1 / 2,
);
SizedBox SB_1H = SizedBox(
  height: HEIGHT_1,
);
SizedBox SB_2H = SizedBox(
  height: HEIGHT_2,
);
SizedBox SB_3H = SizedBox(
  height: HEIGHT_3,
);
SizedBox SB_4H = SizedBox(
  height: HEIGHT_4,
);
SizedBox SB_5H = SizedBox(
  height: HEIGHT_5,
);

//Horizontal SizedBox Between Widgets
SizedBox SB_BY_4W = SizedBox(
  width: WIDTH_1 / 4,
);
SizedBox SB_1W = SizedBox(
  width: WIDTH_1,
);
SizedBox SB_2W = SizedBox(
  width: WIDTH_2,
);
SizedBox SB_3W = SizedBox(
  width: WIDTH_3,
);
SizedBox SB_4W = SizedBox(
  width: WIDTH_4,
);
SizedBox SB_5W = SizedBox(
  width: WIDTH_5,
);
SizedBox SB_6W = SizedBox(
  width: WIDTH_6,
);

//Navigator Key will be used to routing
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

const LinearGradient LINEAR_GRADIENT = LinearGradient(
  colors: [
    PRIMARY_COLOR,
    PRIMARY_COLOR,
  ],
);
