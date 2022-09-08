import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../res/resources.dart';
import 'widgets/banner_item.dart';
import 'widgets/body.dart';
import 'widgets/header.dart';

class SearchScreen extends ConsumerWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const Header(),
      body: Body(
        children: [
          Container(
            height: 190.h,
            margin: EdgeInsets.symmetric(
                horizontal: Dimens.hGapDp24, vertical: Dimens.vGapDp24 / 2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(Dimens.radiusDp12),
            ),
            clipBehavior: Clip.antiAlias,
            child: const BannerItem(
              imgUrl:
                  'http://p1.music.126.net/BcZXvoTKen7fPMDXezzScQ==/109951167853780577.jpg',
              title: '广告',
              titleColor: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
