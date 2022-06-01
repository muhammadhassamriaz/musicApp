import 'package:flutter/material.dart';

import '../../res/constants.dart';
import '../../res/globals.dart';

class GenreTile extends StatelessWidget {
  const GenreTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: HEIGHT_3 * 2,
          width: HEIGHT_3 * 2,
          decoration: BoxDecoration(
            borderRadius: BORDER_CIRCULAR_RADIUS,
            image: const DecorationImage(
              image: AssetImage(
                Constants.GENRETILE,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: defaultSize.screenHeight * .01,
        ),
        SizedBox(
          width: HEIGHT_3 * 2,
          child: Text(
            "R&B Soul",
            style: labelTextStyle(context),
            maxLines: 1,
          ),
        ),
      ],
    );
  }
}
