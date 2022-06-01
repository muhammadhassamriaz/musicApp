import 'package:flutter/material.dart';
import 'package:karaoke/res/constants.dart';
import 'package:karaoke/res/globals.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../res/color.dart';

class VoiceTab extends StatefulWidget {
  const VoiceTab({Key? key}) : super(key: key);

  @override
  State<VoiceTab> createState() => _VoiceTabState();
}

class _VoiceTabState extends State<VoiceTab> {
  List<String> controls = [
    Constants.VOCAL,
    Constants.ELECTRONIC,
    Constants.METAL,
    Constants.HARMONY
  ];
  List<String> titles = ["Vocal", "Electronic", "Metal", "Harmony"];

  int index = 10;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SB_1H,
        Row(
          children: [
            SB_2W,
            Text(
              "Voice",
              style: hintTextStyle(context)?.copyWith(
                fontSize: defaultSize.screenWidth * .04,
              ),
            ),
          ],
        ),
        SB_1H,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            controls.length,
            (i) {
              return Column(
                children: [
                  Container(
                    width: WIDTH_3 * 2.5,
                    height: WIDTH_3 * 2.5,
                    decoration: BoxDecoration(
                      border: index == i
                          ? Border.all(color: SECONDARY_COLOR)
                          : null,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            index = i;
                          });
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            color: PIN_FIELD_COLOR,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset(
                                controls[i],
                                color:
                                    i == index ? SECONDARY_COLOR : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: defaultSize.screenHeight * .01,
                  ),
                  Text(
                    titles[i],
                    style: hintTextStyle(context)
                        ?.copyWith(color: index == i ? SECONDARY_COLOR : null),
                  )
                ],
              );
            },
          ),
        )
      ],
    );
  }
}
