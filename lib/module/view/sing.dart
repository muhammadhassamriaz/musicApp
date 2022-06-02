import '../../package/route.dart';

class SingView extends StatelessWidget {
  const SingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SingHeader(),
          SingTabbar(),
          Expanded(
            child: TabBarView(
              children: [
                Songs(),
                Artist(),
                Genre(),
                Recording(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
