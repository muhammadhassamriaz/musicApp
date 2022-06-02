import '../../../package/route.dart';

class Recording extends StatelessWidget {
  const Recording({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: const [
                    InfoTile(
                      isSong: true,
                      isRecording: true,
                    ),
                    Divider(),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
