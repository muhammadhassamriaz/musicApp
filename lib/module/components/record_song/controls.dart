import 'package:flutter/material.dart';
import 'package:karaoke/animation/slide_up_transparent_animation.dart';
import 'package:karaoke/module/components/record_song/end_song_pop_up.dart';
import 'package:karaoke/module/view/post_song.dart';
import 'package:karaoke/module/view/trim_recording.dart';
import 'package:karaoke/res/color.dart';
import 'package:karaoke/res/globals.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../res/constants.dart';

class Controls extends StatelessWidget {
  const Controls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            SB_1H,
            SvgPicture.asset(
              Constants.RECORDINGRESTARTSVG,
            ),
            SizedBox(
              height: defaultSize.screenHeight * .01,
            ),
            Text(
              "Restart",
              style: hintTextStyle(context),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: PIN_FIELD_COLOR,
                borderRadius: BORDER_CIRCULAR_RADIUS,
              ),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  "Tap to Resume",
                  style: labelTextStyle(context),
                ),
              ),
            ),
            SizedBox(
              height: defaultSize.screenHeight * .01,
            ),
            Container(
              width: WIDTH_3 * 2.5,
              height: WIDTH_3 * 2.5,
              decoration: BoxDecoration(
                border: Border.all(),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => TrimRecording(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: SECONDARY_COLOR,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: defaultSize.screenHeight * .01,
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              SlideUpTransparentRoute(
                enterWidget: EndSongPopUp(
                  callback: () {
                    Navigator.pop(context);
                  },
                  pressNo: () {},
                  pressYes: () {
                    Navigator.pop(context);
                    Future.delayed(const Duration(seconds: 1), () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const PostSong(),
                        ),
                      );
                    });
                  },
                ),
                routeName: EndSongPopUp.id,
              ),
            );
          },
          child: Column(
            children: [
              SvgPicture.asset(
                Constants.RECORDINGENDSVG,
              ),
              SizedBox(
                height: defaultSize.screenHeight * .01,
              ),
              Text(
                "End",
                style: hintTextStyle(context),
              ),
            ],
          ),
        )
      ],
    );
  }
}
