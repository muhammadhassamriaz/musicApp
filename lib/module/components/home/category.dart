import 'package:flutter/material.dart';
import 'package:karaoke/module/components/home/category_expansion_tile.dart';
import 'package:karaoke/res/color.dart';
import 'package:karaoke/res/constants.dart';
import 'package:karaoke/res/globals.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: WIDTH_1,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SB_1H,
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CategoryExpansionTile(),
                    SB_1H,
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
