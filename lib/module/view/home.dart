import 'package:flutter/material.dart';
import 'package:karaoke/module/components/home/category.dart';
import 'package:karaoke/module/components/home/home_header.dart';
import 'package:karaoke/module/components/home/popular.dart';
import 'package:karaoke/module/providers/data_provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
            Expanded(
              child: Category(),
            )
        ],
      ),
    );
  }
}
