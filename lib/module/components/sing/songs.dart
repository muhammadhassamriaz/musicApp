import '../../../package/route.dart';

class Songs extends StatelessWidget {
  const Songs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: WIDTH_1,
      ),
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: const [
                InfoTile(
                  isSong: true,
                ),
                Divider(),
              ],
            ),
          );
        },
      ),
    );
  }
}
