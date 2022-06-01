import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:karaoke/res/color.dart';
import 'package:karaoke/res/constants.dart';
import 'package:karaoke/res/globals.dart';

class PopularTabbar extends StatefulWidget {
  const PopularTabbar({Key? key}) : super(key: key);

  @override
  State<PopularTabbar> createState() => _PopularTabbarState();
}

class _PopularTabbarState extends State<PopularTabbar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      onTap: (i) {
        index = i;
        setState(() {});
      },
      indicatorColor: PRIMARY_COLOR,
      indicatorSize: TabBarIndicatorSize.label,
      tabs: [
        Tab(
          icon: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Constants.TRENDINGSVG,
                color: index == 0 ? PRIMARY_COLOR : null,
              ),
              SizedBox(
                width: defaultSize.screenWidth * .01,
              ),
              Text(
                "Top",
                style: hintTextStyle(context)?.copyWith(
                  color: index == 0 ? PRIMARY_COLOR : null,
                ),
              )
            ],
          ),
        ),
        Tab(
          icon: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Constants.WEEKLYCALENDARSVG,
                color: index == 1 ? PRIMARY_COLOR : null,
              ),
              SizedBox(
                width: defaultSize.screenWidth * .01,
              ),
              Text(
                "Weekly",
                style: hintTextStyle(context)?.copyWith(
                  color: index == 1 ? PRIMARY_COLOR : null,
                ),
              )
            ],
          ),
        ),
        Tab(
          icon: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Constants.MONTHLYCALENDARSVG,
                color: index == 2 ? PRIMARY_COLOR : null,
              ),
              SizedBox(
                width: defaultSize.screenWidth * .01,
              ),
              Text(
                "Monthly",
                style: hintTextStyle(context)?.copyWith(
                  color: index == 2 ? PRIMARY_COLOR : null,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
