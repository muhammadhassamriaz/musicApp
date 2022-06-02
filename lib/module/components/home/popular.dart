import '../../../package/route.dart';

class Popular extends StatelessWidget {
  const Popular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          const PopularTabbar(),
          SB_1H,
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: WIDTH_2,
              ),
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Column(
                    children: const [
                      InfoTile(),
                      Divider(),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
