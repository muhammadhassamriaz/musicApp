import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:karaoke/module/components/home/popular_tabbar.dart';
import 'package:karaoke/module/widgets/info_tile.dart';
import 'package:karaoke/res/constants.dart';
import 'package:karaoke/res/globals.dart';

class Popular extends StatelessWidget {
  const Popular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          const PopularTabbar(),
          SB_1H,
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: WIDTH_2,
              ),
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Column(
                    children: const [
                      InfoTile(),
                      Divider(),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
