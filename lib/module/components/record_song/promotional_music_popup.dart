import 'package:flutter/material.dart';
import 'package:karaoke/animation/circular_radius_bar.dart';
import 'package:karaoke/res/color.dart';
import 'package:karaoke/res/constants.dart';
import '../../../res/globals.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/transparent_button.dart';

class PromotionalMusic extends StatefulWidget {
  const PromotionalMusic({Key? key}) : super(key: key);

  @override
  State<PromotionalMusic> createState() => _PromotionalMusicState();
}

class _PromotionalMusicState extends State<PromotionalMusic> {
  ValueNotifier<double> valueNotifier = ValueNotifier(0.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BORDER_CIRCULAR_RADIUS * 2,
        color: Colors.white,
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SB_2H,
            Center(
              child: CircularAnimatedProgressBar(
                // valueNotifier: valueNotifier,
                mergeMode: true,
                size: WIDTH_5 * 5,
                backColor: PIN_FIELD_COLOR,
                progressColors: const [
                  PRIMARY_COLOR,
                  SECONDARY_COLOR,
                ],
                onGetText: (double value) {
                  return Column(
                    children: [
                      SvgPicture.asset(
                        Constants.PAUSESVG,
                      ),
                      SizedBox(
                        height: defaultSize.screenHeight*.01,
                      ),
                      Text('02:${value.toInt()}/05:00',
                          style: hintTextStyle(context)),
                    ],
                  );
                },
              ),
            ),
            SB_2H,
            Text(
              "A Beautiful Morning",
              style: subTitleTextStyle(context),
            ),
            Text(
              "The Rascals",
              style: hintTextStyle(context),
            ),
            SB_2H,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TransparentButton(
                  title: Text(
                    "Get It Now",
                    style: buttonTextStyle(context),
                  ),
                  borderRadius: BORDER_CIRCULAR_RADIUS * 3,
                  buttonColor: SECONDARY_COLOR,
                  onPressed: () {},
                  buttonHeight: HEIGHT_3,
                  subTitle: "",
                  buttonWidth: WIDTH_4 * 5,
                ),
                TransparentButton(
                  title: Text(
                    "Cancel",
                    style: buttonTextStyle(context)
                        ?.copyWith(color: SECONDARY_COLOR),
                  ),
                  borderRadius: BORDER_CIRCULAR_RADIUS * 3,
                  borderColor: SECONDARY_COLOR,
                  onPressed: () {},
                  buttonHeight: HEIGHT_3,
                  subTitle: "",
                  buttonWidth: WIDTH_4 * 5,
                ),
              ],
            ),
            SB_2H,
          ],
        ),
      ),
    );
  }
}
