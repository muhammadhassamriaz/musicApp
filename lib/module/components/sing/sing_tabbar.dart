import '../../../package/route.dart';

class SingTabbar extends StatefulWidget {
  const SingTabbar({Key? key}) : super(key: key);

  @override
  State<SingTabbar> createState() => _SingTabbarState();
}

class _SingTabbarState extends State<SingTabbar> {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      onTap: (i) {
        setState(() {});
      },
      indicatorColor: PRIMARY_COLOR,
      indicatorSize: TabBarIndicatorSize.label,
      labelColor: PRIMARY_COLOR,
      unselectedLabelColor: Colors.grey,
      unselectedLabelStyle: hintTextStyle(context),
      labelStyle: labelTextStyle(context),
      tabs: const [
        Tab(
          text: "Songs",
        ),
        Tab(
          text: "Artists",
        ),
        Tab(
          text: "Genres",
        ),
        Tab(
          text: "Recordings",
        ),
      ],
    );
  }
}
