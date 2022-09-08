import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netease_cloud_music/provider/search/banner_provider.dart';

import '../../res/resources.dart';
import 'widgets/banner_item.dart';
import 'widgets/body.dart';
import 'widgets/header.dart';

class SearchScreen extends ConsumerWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final banners = ref.watch(bannerProvider);

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
            child: Swiper(
              autoplay: true,
              itemCount: banners.length,
              itemBuilder: (_, index) => BannerItem(
                imgUrl: banners[index].pic,
                title: banners[index].typeTitle,
                titleColor: banners[index].titleBgColor,
              ),
              pagination: SwiperPagination(
                margin: EdgeInsets.only(bottom: Dimens.vGapDp10),
                builder: DotSwiperPaginationBuilder(
                  size: 10.h,
                  activeSize: 10.h,
                  color: const Color(0xFFCCCCCC),
                  activeColor: const Color(0xFFFCFCFC),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
