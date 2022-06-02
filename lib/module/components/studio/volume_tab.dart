import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:wave_progress_bars/wave_progress_bars.dart';

import '../../../package/route.dart';
class VolumeTab extends StatefulWidget {
  const VolumeTab({Key? key}) : super(key: key);

  @override
  State<VolumeTab> createState() => _VolumeTabState();
}

class _VolumeTabState extends State<VolumeTab> {
  double _volume = 20;
  double _music = 20;
  final List<double> values = [];
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    var rng = Random();
    for (var i = 0; i < 100; i++) {
      values.add(rng.nextInt(70) * 1.0);
    }
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: defaultSize.screenWidth * .05,
            ),
            child: Text(
              "Voice Vol.",
              style: hintTextStyle(context)?.copyWith(
                fontSize: defaultSize.screenWidth * .038,
              ),
            ),
          ),
          SliderTheme(
            data: SliderThemeData(
              rangeThumbShape: RoundRangeSliderThumbShape(
                disabledThumbRadius: defaultSize.screenWidth * .03,
                enabledThumbRadius: defaultSize.screenWidth * .03,
              ),
              disabledActiveTickMarkColor: Colors.white,
              disabledActiveTrackColor: Colors.white,
              inactiveTickMarkColor: Colors.white,
              inactiveTrackColor: Colors.white,
              valueIndicatorColor: Colors.white,
              overlayColor: Colors.white,
              thumbColor: SECONDARY_COLOR,
              activeTrackColor: SECONDARY_COLOR,
              activeTickMarkColor: Colors.transparent,
              trackHeight: defaultSize.screenWidth * .0003,
            ),
            child: Slider(
              inactiveColor: Colors.grey,
              min: 0,
              max: 100,
              divisions: 100,
              onChanged: (double value) {
                setState(() {
                  _volume = value;
                });
              },
              value: _volume,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: defaultSize.screenWidth * .05,
            ),
            child: Text(
              "Music Vol.",
              style: hintTextStyle(context)?.copyWith(
                fontSize: defaultSize.screenWidth * .038,
              ),
            ),
          ),
          SliderTheme(
            data: SliderThemeData(
              rangeThumbShape: RoundRangeSliderThumbShape(
                disabledThumbRadius: defaultSize.screenWidth * .03,
                enabledThumbRadius: defaultSize.screenWidth * .03,
              ),
              disabledActiveTickMarkColor: Colors.white,
              disabledActiveTrackColor: Colors.white,
              inactiveTickMarkColor: Colors.white,
              inactiveTrackColor: Colors.white,
              valueIndicatorColor: Colors.white,
              overlayColor: Colors.white,
              thumbColor: SECONDARY_COLOR,
              activeTrackColor: SECONDARY_COLOR,
              activeTickMarkColor: Colors.transparent,
              trackHeight: defaultSize.screenWidth * .0003,
            ),
            child: Slider(
              inactiveColor: Colors.grey,
              min: 0,
              max: 100,
              divisions: 100,
              onChanged: (double value) {
                setState(() {
                  _music = value;
                });
              },
              value: _music,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: defaultSize.screenWidth * .05,
            ),
            child: Text(
              "Voice Match",
              style: hintTextStyle(context)?.copyWith(
                fontSize: defaultSize.screenWidth * .038,
              ),
            ),
          ),
          Center(
            child: WaveProgressBar(
              progressPercentage: 20,
              listOfHeights: values,
              width: defaultSize.scaleWidth,
              initalColor: Colors.grey,
              progressColor: SECONDARY_COLOR,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              timeInMilliSeconds: 2000,
              isHorizontallyAnimated: true,
              isVerticallyAnimated: true,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: defaultSize.screenWidth * .05,
              top: defaultSize.screenWidth * .05,
              right: defaultSize.screenWidth * .05,
            ),
            child: Row(
              children: [
                Text(
                  "Denoise",
                  style: hintTextStyle(context)?.copyWith(
                    fontSize: defaultSize.screenWidth * .038,
                  ),
                ),
                Spacer(),
                CupertinoSwitch(
                  value: _switchValue,
                  onChanged: (value) {
                    setState(() {
                      _switchValue = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
