import 'package:flutter/material.dart';

import '../../../res/color.dart';
import '../../../res/globals.dart';

class AdjustDuration extends StatelessWidget {
  const AdjustDuration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: PIN_FIELD_COLOR,
        borderRadius: BORDER_CIRCULAR_RADIUS * 2,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: WIDTH_5,
              height: WIDTH_5,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
              child: Icon(
                Icons.remove,
                size: defaultSize.screenWidth * .06,
                color: SECONDARY_COLOR,
              ),
            ),
            SB_1W,
            const Text("53.36"),
            SB_1W,
            Container(
              width: WIDTH_5,
              height: WIDTH_5,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
              child: Icon(
                Icons.add,
                size: defaultSize.screenWidth * .06,
                color: SECONDARY_COLOR,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
