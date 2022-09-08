import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netease_cloud_music/provider/search/playlist_rcmd_provider.dart';
import 'package:netease_cloud_music/screen/search/widgets/slide_playlist.dart';
import 'package:netease_cloud_music/screen/search/widgets/slide_songlist_align.dart';

import '../../res/resources.dart';
import '../../provider/search/ball_menu_provider.dart';
import '../../provider/search/banner_provider.dart';

import 'widgets/header.dart';
import 'widgets/body.dart';
import 'widgets/banner_item.dart';
import 'widgets/ball_menu_item.dart';
import '../../widgets/block_container.dart';

class SearchScreen extends ConsumerWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final banners = ref.watch(bannerProvider);
    final menus = ref.watch(ballMenuProvider);
    final rcmdPlaylist = ref.watch(playlistRcmdProvider);

    return Scaffold(
      appBar: const Header(),
      body: Body(
        children: [
          // Banner
          Container(
            padding: EdgeInsets.fromLTRB(
                Dimens.hGapDp24, Dimens.hGapDp24 / 2, Dimens.hGapDp24, 0),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFEBEBEB),
                  Colours.mainBgColor,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Container(
              height: 190.h,
              decoration: BoxDecoration(
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
          ),

          // 圆形图标入口列表
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              color: Colours.mainBgColor,
              padding: EdgeInsets.symmetric(
                horizontal: Dimens.hGapDp24 / 2,
                vertical: Dimens.vGapDp30,
              ),
              child: Row(
                children: menus
                    .map((menu) => BallMenuItem(
                          name: menu.name,
                          iconUrl: menu.iconUrl,
                        ))
                    .toList(),
              ),
            ),
          ),

          //分割线
          Gaps.line,

          // 推荐歌单
          BlockContainer(
            blockName: rcmdPlaylist.blockName,
            buttonText: rcmdPlaylist.buttonText,
            onButtonClick: () {
              print('点击了${rcmdPlaylist.buttonText}按钮');
            },
            children: rcmdPlaylist.creatives
                .map((playlist) => SlidePlaylist(
                      imgUrl: playlist.imageUrl,
                      title: playlist.title,
                      playCount: playlist.playCount,
                      creativeType: playlist.creativeType,
                      press: () {
                        print('点击了${playlist.title}歌单');
                      },
                    ))
                .toList(),
          ),

          // 风格推荐
          const BlockContainer(
            blockName: '为你精选的宝藏歌曲',
            buttonText: '播放',
            children: [
              SlideSongListAlign(
                resources: [
                  {
                    "title": "爱上你是一个错",
                    "subTitle": "昨日十万播放",
                    "subTitleType": "songRcmdTag",
                    "imageUrl":
                        "http://p1.music.126.net/ME4BfW2fNSBTFqBXi3D5Ag==/109951167855743116.jpg",
                    "artists": ['张小伙', '粥粥zxr'],
                  },
                  {
                    "title": "梦到你",
                    "subTitle": "昨日十万播放",
                    "subTitleType": "",
                    "imageUrl":
                        "http://p1.music.126.net/cHQMbaBlPgFARNTAgvXTxg==/109951167839805762.jpg",
                    "artists": ['沙一汀EL'],
                  },
                  {
                    "title": "I Never Told You",
                    "subTitle": "昨日上万播放",
                    "subTitleType": "songRcmdTag",
                    "imageUrl":
                        "http://p1.music.126.net/oyvdDn7wEDocQWogEZavUg==/109951167721170782.jpg",
                    "artists": ['ICE'],
                  },
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
