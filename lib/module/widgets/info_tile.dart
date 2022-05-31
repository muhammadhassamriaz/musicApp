import 'package:flutter/material.dart';
import 'package:karaoke/res/constants.dart';
import 'package:karaoke/res/globals.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoTile extends StatelessWidget {
  const InfoTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: defaultSize.screenWidth * .15,
          width: defaultSize.screenWidth * .15,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(
                Constants.PROFILEAVATAR,
              ),
            ),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
        ),
        SB_1W,
        Column(
          children: [
            Text(
              "Ann Dorwart",
              style: labelTextStyle(context)?.copyWith(),
            ),
            Text(
              "An - unknown",
              style: hintTextStyle(context)?.copyWith(
                fontSize: defaultSize.screenWidth * .032,
              ),
            )
          ],
        ),
      ],
    );
  }
}
