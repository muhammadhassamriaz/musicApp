import 'package:flutter/material.dart';
import 'package:karaoke/module/widgets/bottom_bar.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
