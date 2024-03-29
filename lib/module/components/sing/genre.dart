import '../../../package/route.dart';

class Genre extends StatelessWidget {
  const Genre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Wrap(
                spacing: 16.0,
                runSpacing: 5.0,
                children: List.generate(
                  8,
                  (index) => const GenreTile(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
