import 'dart:math';

import '../../package/route.dart';
import 'package:wave_progress_bars/wave_progress_bars.dart';

class TrimRecording extends StatefulWidget {
  const TrimRecording({Key? key}) : super(key: key);

  @override
  State<TrimRecording> createState() => _TrimRecordingState();
}

class _TrimRecordingState extends State<TrimRecording> {
  final List<double> values = [];
  @override
  void initState() {
    super.initState();
    var rng = Random();
    for (var i = 0; i < 100; i++) {
      values.add(rng.nextInt(70) * 3.5);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: WIDTH_1,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SB_1H,
                Row(
                  children: [
                    const CustomBackButton(
                      color: Colors.white,
                    ),
                    SB_1W,
                    Expanded(
                      child: Text(
                        "E-sir - Boomba Train",
                        style: subTitleTextStyle(context),
                        maxLines: 1,
                      ),
                    ),
                    CustomBackButton(
                      color: Colors.white,
                      icon: Padding(
                          padding: const EdgeInsets.only(
                            right: 8.0,
                          ),
                          child: SvgPicture.asset(Constants.TRIM)),
                    ),
                    SB_1W,
                    CustomBackButton(
                      color: Colors.white,
                      icon: Padding(
                        padding: EdgeInsets.only(
                          right: 8.0,
                        ),
                        child: SvgPicture.asset(Constants.HELP),
                      ),
                    ),
                  ],
                ),
                SB_3H,
                Container(
                  decoration: BoxDecoration(
                    color: PIN_FIELD_COLOR,
                    borderRadius: BORDER_CIRCULAR_RADIUS,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: WIDTH_1 * 2,
                    vertical: WIDTH_1,
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                20,
                                (index) {
                                  return Padding(
                                    padding: EdgeInsets.only(
                                      right: 20,
                                    ),
                                    child: Text(
                                      "0.15",
                                      style: hintTextStyle(context),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          SB_1H,
                          WaveProgressBar(
                            progressPercentage: 20,
                            listOfHeights: values,
                            width: defaultSize.screenWidth,
                            initalColor: Colors.grey,
                            progressColor: SECONDARY_COLOR,
                            backgroundColor: PIN_FIELD_COLOR,
                            timeInMilliSeconds: 200,
                            isHorizontallyAnimated: true,
                            isVerticallyAnimated: true,
                          ),
                          SB_1H,
                          ChageDuration(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "1.45",
                                style: hintTextStyle(context),
                              ),
                              Text(
                                "3:39",
                                style: hintTextStyle(context),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Positioned(
                        right: 0,
                        top: HEIGHT_3,
                        child: Container(
                          height: HEIGHT_2 * 3,
                          width: WIDTH_4 * 2,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BORDER_CIRCULAR_RADIUS * 3,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset(Constants.ZOOMIN),
                              Divider(),
                              SvgPicture.asset(Constants.ZOOMOUT),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SB_2H,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Start",
                          style: hintTextStyle(context),
                        ),
                        AdjustDuration(),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "End",
                          style: hintTextStyle(context),
                        ),
                        AdjustDuration(),
                      ],
                    ),
                  ],
                ),
                SB_1H,
                Text(
                  "Lenght",
                  style: hintTextStyle(context),
                ),
                SB_1H,
                Container(
                  decoration: BoxDecoration(
                    color: PIN_FIELD_COLOR,
                    borderRadius: BORDER_CIRCULAR_RADIUS * 2,
                  ),
                  width: WIDTH_3 * 3,
                  height: WIDTH_3 * 2,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "48",
                        style: hintTextStyle(context),
                      ),
                    ),
                  ),
                ),
                SB_2H,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(Constants.BACKWORD),
                    SvgPicture.asset(Constants.PLAY),
                    SvgPicture.asset(Constants.FORWARD),
                  ],
                ),
                SB_2H,
                TransparentButton(
                  title: Text(
                    "Save",
                    style: buttonTextStyle(context),
                  ),
                  borderRadius: BORDER_CIRCULAR_RADIUS*2,
                  onPressed: () {},
                  buttonHeight: HEIGHT_4,
                  buttonColor: SECONDARY_COLOR,
                ),
                SB_1H,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
