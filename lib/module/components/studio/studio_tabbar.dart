import '../../../package/route.dart';

class StudioTabbar extends StatelessWidget {
  const StudioTabbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorColor: SECONDARY_COLOR,
      indicatorSize: TabBarIndicatorSize.label,
      unselectedLabelColor: Colors.grey,
      unselectedLabelStyle: hintTextStyle(context),
      labelStyle: labelTextStyle(context),
      tabs: const [
        Tab(
          text: "Voice Effect",
        ),
        Tab(
          text: "Volume",
        ),
      ],
    );
  }
}
