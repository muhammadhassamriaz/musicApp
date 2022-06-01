import 'package:flutter/material.dart';
import 'package:karaoke/module/components/record_song/controls.dart';
import 'package:karaoke/res/globals.dart';

import '../widgets/back_button.dart';

class SingSong extends StatelessWidget {
  const SingSong({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: WIDTH_1,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SB_1H,
              Row(
                children: const [
                  CustomBackButton(
                    color: Colors.white,
                  ),
                  Spacer(),
                  CustomBackButton(
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
              SB_5H,
              SB_1H,
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
              const Spacer(),
              const Controls(),
              SB_2H,
            ],
          ),
        ),
      ),
    );
  }
}
