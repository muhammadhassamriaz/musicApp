import 'package:karaoke/package/route.dart';

class SubscribePopUp extends StatefulWidget {
  final VoidCallback callback;
  const SubscribePopUp({
    Key? key,
    required this.callback,
  }) : super(key: key);

  @override
  State<SubscribePopUp> createState() => _SubscribePopUpState();
}

class _SubscribePopUpState extends State<SubscribePopUp> {
  ValueNotifier<double> valueNotifier = ValueNotifier(0.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BORDER_CIRCULAR_RADIUS * 2,
        color: Colors.white,
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SB_2H,
            SvgPicture.asset(Constants.SUBSCRIBE),
            Text(
              "You don't have any Skiza Tune set up. Get started by checking out the great collection and setting a song HERE.",
              style: labelTextStyle(context),
              textAlign: TextAlign.center,
            ),
            SB_2H,
            TransparentButton(
              title: Text(
                "Get Tunes",
                style: buttonTextStyle(context),
              ),
              borderRadius: BORDER_CIRCULAR_RADIUS * 3,
              onPressed: () {
                widget.callback();
              },
              buttonHeight: HEIGHT_4,
              buttonColor: SECONDARY_COLOR,
            ),
            SB_1H,
          ],
        ),
      ),
    );
  }
}
