
import '../../package/route.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _dataProvider = Provider.of<DataProvider>(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeViewHeader(),
          if (_dataProvider.homeTypeIndex == 0)
            const Expanded(
              child: Popular(),
            )
          else
            const Expanded(
              child: Category(),
            )
        ],
      ),
    );
  }
}
