import 'package:flutter/material.dart';
import 'package:karaoke/module/components/sing/artist.dart';
import 'package:karaoke/module/components/sing/genre.dart';
import 'package:karaoke/module/components/sing/recording.dart';
import 'package:karaoke/module/components/sing/sing_header.dart';
import 'package:karaoke/module/components/sing/sing_tabbar.dart';
import 'package:karaoke/module/components/sing/songs.dart';

class SingView extends StatelessWidget {
  const SingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SingHeader(),
          SingTabbar(),
          Expanded(
            child: TabBarView(
              children: [
                Songs(),
                Artist(),
                Genre(),
                Recording(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
