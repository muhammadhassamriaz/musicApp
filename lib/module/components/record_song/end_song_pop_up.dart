import 'dart:ui';

import '../../../package/route.dart';

class EndSongPopUp extends StatefulWidget {
  static const String id = '/congrationlation_popup';
  final VoidCallback callback;
  final Widget? child;
  final VoidCallback pressNo;
  final VoidCallback pressYes;
  final String? desciption;
  const EndSongPopUp({
    Key? key,
    required this.callback,
    required this.pressNo,
    required this.pressYes,
    this.desciption,
    this.child,
  }) : super(key: key);

  @override
  State<EndSongPopUp> createState() => _EndSongPopUpState();
}

class _EndSongPopUpState extends State<EndSongPopUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: GestureDetector(
                      onTap: () {
                        widget.callback();
                      },
                      child: Container(color: Colors.transparent)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: WIDTH_2,
                  ),
                  child: widget.child ??
                      Container(
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          borderRadius: BORDER_CIRCULAR_RADIUS * 2,
                          color: Colors.white,
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SB_2H,
                              Center(
                                child: Text(
                                  widget.desciption ??
                                      "The recording is not finished yet.\nare you sure you want to end it?",
                                  style: labelTextStyle(context),
                                ),
                              ),
                              SB_2H,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  TransparentButton(
                                    title: Text(
                                      "No",
                                      style: buttonTextStyle(context),
                                    ),
                                    borderRadius: BORDER_CIRCULAR_RADIUS * 3,
                                    buttonColor: SECONDARY_COLOR,
                                    onPressed: () {
                                      widget.pressNo();
                                    },
                                    buttonHeight: HEIGHT_3,
                                    subTitle: "",
                                    buttonWidth: WIDTH_4 * 5,
                                  ),
                                  TransparentButton(
                                    title: Text(
                                      "Yes",
                                      style: buttonTextStyle(context)
                                          ?.copyWith(color: SECONDARY_COLOR),
                                    ),
                                    borderRadius: BORDER_CIRCULAR_RADIUS * 3,
                                    borderColor: SECONDARY_COLOR,
                                    onPressed: () {
                                      widget.pressYes();
                                    },
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
                      ),
                ),
                Expanded(
                  child: GestureDetector(
                      onTap: () {
                        widget.callback();
                      },
                      child: Container(color: Colors.transparent)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
