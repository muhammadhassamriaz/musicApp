import '../../package/route.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Provider.of<DataProvider>(context).index == 0
            ? const HomeView()
            : Provider.of<DataProvider>(context).index == 1
                ? const SingView()
                : const AccountView(),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
