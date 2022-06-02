import 'dart:io';

import '../../package/route.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: Platform.isIOS ? 16 : 0),
      height: Platform.isIOS ? 75 : 62,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            color: Colors.grey.withOpacity(0.2),
          ),
        ),
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BottomNavIcon(
            callback: () {
              context.read<DataProvider>().setIndexValue(0);
              setState(() {});
            },
            asset: Constants.HOME,
            matched: context.read<DataProvider>().index == 0,
            title: "Home",
          ),
          BottomNavIcon(
            callback: () {
              context.read<DataProvider>().setIndexValue(1);
              setState(() {});
            },
            asset: Constants.MIC2,
            matched: context.read<DataProvider>().index == 1,
            title: "Sing",
          ),
          BottomNavIcon(
            callback: () {
              context.read<DataProvider>().setIndexValue(2);
              setState(() {});
            },
            asset: Constants.USERSVG,
            matched: context.read<DataProvider>().index == 2,
            title: "Account",
          ),
        ],
      ),
    );
  }
}
