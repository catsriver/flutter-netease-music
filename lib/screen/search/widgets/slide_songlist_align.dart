import 'package:flutter/material.dart';

import '../../../res/resources.dart';
import 'slide_songlist.dart';

class SlideSongListAlign extends StatelessWidget {
  const SlideSongListAlign({
    Key? key,
    required this.resources,
  }) : super(key: key);

  final List<Map<String, dynamic>> resources;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimens.hGapDp24 / 2),
      child: Column(
        children: [
          for (int i = 0; i < resources.length; i++)
            SlideSongList(
              imageUrl: resources[i]['imageUrl'],
              title: resources[i]['title'],
              subTitle: resources[i]['subTitle'],
              artists: resources[i]['artists'],
              bottom: i == resources.length - 1 ? false : true,
              subTitleType: resources[i]['subTitleType'],
            ),
        ],
      ),
    );
  }
}
