import 'package:flutter/material.dart';
import 'package:karaoke/module/providers/data_provider.dart';
import 'package:karaoke/module/view/home.dart';
import 'package:karaoke/module/view/sing.dart';
import 'package:karaoke/module/widgets/bottom_bar.dart';
import 'package:provider/provider.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Provider.of<DataProvider>(context).index == 0
            ? const HomeView()
            : const SingView(),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
