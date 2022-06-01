import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:karaoke/module/view/record.dart';
import 'package:karaoke/res/color.dart';

import 'package:karaoke/res/constants.dart';
import 'package:karaoke/res/globals.dart';

class InfoTile extends StatelessWidget {
  final bool isSong;
  final bool isRecording;
  const InfoTile({
    Key? key,
    this.isSong = false,
    this.isRecording = false,
  }) : super(key: key);

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
        const Spacer(),
        if (isRecording) SB_1W,
        if (isRecording)
          Container(
            height: HEIGHT_1 * 1.4,
            width: HEIGHT_1 * 1.4,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: SECONDARY_COLOR,
              ),
            ),
          ),
        if (isRecording) SB_1W,
        if (isSong)
          GestureDetector(
            onTap: () {
              navigatorKey.currentState?.push(
                MaterialPageRoute(
                  builder: (_) => const RecordView(),
                ),
              );
            },
            child: Container(
              width: WIDTH_5 * 2,
              height: HEIGHT_2,
              decoration: BoxDecoration(
                border: Border.all(
                  color: SECONDARY_COLOR,
                ),
                borderRadius: BORDER_CIRCULAR_RADIUS * 2,
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Center(
                child: Text(
                  "Sing",
                  style: labelTextStyle(context)?.copyWith(
                    color: SECONDARY_COLOR,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
