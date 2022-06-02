import '../../../package/route.dart';

class Artist extends StatelessWidget {
  const Artist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Most popular Artist",
              style: subTitleTextStyle(context),
            ),
            SB_1H,
            ListView.builder(
              itemCount: 3,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Column(
                  children: const [InfoTile(), Divider()],
                );
              },
            ),
            SB_1H,
            Text(
              "Male Artist",
              style: subTitleTextStyle(context),
            ),
            SB_1H,
            ListView.builder(
              itemCount: 4,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Column(
                  children: const [InfoTile(), Divider()],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
