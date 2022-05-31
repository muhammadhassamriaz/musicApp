import 'package:flutter/material.dart';
import 'package:karaoke/module/components/home/subcategory.dart';
import 'package:karaoke/res/color.dart';
import 'package:karaoke/res/constants.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

import '../../../res/globals.dart';

class CategoryExpansionTile extends StatelessWidget {
  CategoryExpansionTile({Key? key}) : super(key: key);
  final GlobalKey<ExpansionTileCardState> expansionKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ExpansionTileCard(
      elevation: 0,
      baseColor: Colors.grey[200],
      expandedColor: Colors.grey[200],
      expandedTextColor: Colors.grey[200],
      key: expansionKey,
      shadowColor: Colors.grey[200]!,
      contentPadding: const EdgeInsets.all(8),
      children: [
        GestureDetector(
          onTap: () {
            navigatorKey.currentState?.push(
              MaterialPageRoute(
                builder: (_) => SubCategory(title: "Vernacular"),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Container(
                  width: HEIGHT_3,
                  height: HEIGHT_3,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        Constants.MUSICTILE,
                      ),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                SB_1W,
                Text(
                  "Vernacular",
                  style: buttonTextStyle(context)?.copyWith(
                    color: Colors.grey[600],
                    fontSize: defaultSize.screenWidth * .038,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
      leading: Container(
        width: HEIGHT_5,
        height: HEIGHT_4,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(
              Constants.MUSICTILE,
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: BORDER_CIRCULAR_RADIUS,
        ),
      ),
      title: Text(
        "Non Kenyan",
        style: buttonTextStyle(context)?.copyWith(
          color: Colors.black,
        ),
      ),
    );
  }
}
