import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netease_cloud_music/res/gaps.dart';

import '../../res/resources.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const FaIcon(FontAwesomeIcons.bars),
          onPressed: () {},
        ),
        titleSpacing: 0,
        title: Container(
          height: 53.h,
          decoration: BoxDecoration(
            color: const Color(0xFFFDFDFD),
            borderRadius: BorderRadius.circular(53.h),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(
                FontAwesomeIcons.magnifyingGlass,
                size: 22.h,
                color: Colours.fontColor3,
              ),
              Gaps.hGap7,
              Text(
                '天外来物',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colours.fontColor3),
              ),
              Gaps.hGap7,
              Text(
                '薛之谦',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colours.fontColor4),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.microphoneLines),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
