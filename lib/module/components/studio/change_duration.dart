import 'package:flutter/material.dart';

import '../../../res/color.dart';
import '../../../res/globals.dart';

class ChageDuration extends StatefulWidget {
  const ChageDuration({Key? key}) : super(key: key);

  @override
  State<ChageDuration> createState() => _ChageDurationState();
}

class _ChageDurationState extends State<ChageDuration> {
  double _music = 20;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
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
    );
  }
}
