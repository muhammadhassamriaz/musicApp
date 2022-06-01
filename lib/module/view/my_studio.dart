import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karaoke/module/components/studio/studio_tabbar.dart';
import 'package:karaoke/module/components/studio/voice_tab.dart';
import 'package:karaoke/module/components/studio/volume_tab.dart';

import '../../res/color.dart';
import '../../res/globals.dart';
import '../widgets/back_button.dart';

class MyKaraokeStudio extends StatefulWidget {
  const MyKaraokeStudio({Key? key}) : super(key: key);

  @override
  State<MyKaraokeStudio> createState() => _MyKaraokeStudioState();
}

class _MyKaraokeStudioState extends State<MyKaraokeStudio> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: WIDTH_1,
            ),
            child: Column(
              children: [
                SB_1H,
                Row(
                  children: [
                    const CustomBackButton(
                      color: Colors.white,
                    ),
                    SB_1W,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Courage",
                          style: subTitleTextStyle(context),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                  text: "C",
                                  style: labelTextStyle(context)
                                      ?.copyWith(color: SECONDARY_COLOR)),
                              TextSpan(
                                  text: " 599", style: hintTextStyle(context)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const CustomBackButton(
                      color: Colors.white,
                      icon: Padding(
                        padding: EdgeInsets.only(
                          right: 8.0,
                        ),
                        child: Icon(
                          Icons.more_vert,
                        ),
                      ),
                    ),
                  ],
                ),
                SB_3H,
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BORDER_CIRCULAR_RADIUS,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: WIDTH_5 * 2,
                    vertical: WIDTH_4,
                  ),
                  child: Text(
                    "The next day and night rain or shine You are enough I've seen too many lovers love is fragile like flowers in a greenhouse you say so I'm actually",
                    style: buttonTextStyle(context)?.copyWith(
                      height: defaultSize.screenHeight * .0023,
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SB_1H,
                Text(
                  "A Beautiful Morning",
                  style: subTitleTextStyle(context),
                ),
                Text(
                  "The Rascals",
                  style: hintTextStyle(context),
                ),
                const StudioTabbar(),
                SB_1H,
                const Expanded(
                  child: TabBarView(
                    children: [
                      VolumeTab(),
                      VoiceTab(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
