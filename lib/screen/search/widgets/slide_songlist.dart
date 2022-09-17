import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../res/resources.dart';
import '../../play_music/play_music_screen.dart';

class SlideSongList extends StatelessWidget {
  const SlideSongList({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.artists,
    required this.subTitle,
    this.bottom = true,
    required this.subTitleType,
  }) : super(key: key);

  final String imageUrl;
  final String title;
  final String subTitle;
  final List<String> artists;
  final String subTitleType;
  final bool bottom;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(PlayMusicScreen.routeName),
      child: SizedBox(
        height: 90.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // 左侧图片
            Container(
              width: 75.w,
              height: 75.h,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimens.radiusDp12),
              ),
              child: Image.network(
                imageUrl,
              ),
            ),

            // 间距
            Gaps.hGap15,

            // 右侧列表项
            Container(
              width: 378.w,
              decoration: BoxDecoration(
                border: bottom
                    ? Border(
                        bottom: BorderSide(
                          color: const Color(0xFFF3F3F3),
                          width: 1.h,
                        ),
                      )
                    : null,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // 左侧歌曲详情
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          // 歌曲名称
                          Text(
                            title,
                            style: TextStyle(
                              fontSize: Dimens.fontSp22,
                              color: Colours.fontColor1,
                            ),
                          ),

                          // 间距
                          Gaps.hGap7,

                          Text(
                            '-',
                            style: TextStyle(
                              fontSize: Dimens.fontSp16,
                              color: Colours.fontColor4,
                            ),
                          ),

                          Gaps.hGap5,

                          // 歌手
                          for (int i = 0; i < artists.length; i++)
                            Text(
                              i > 0 ? '/${artists[i]}' : artists[i],
                              style: TextStyle(
                                fontSize: Dimens.fontSp16,
                                color: Colours.fontColor4,
                              ),
                            )
                        ],
                      ),

                      Gaps.vGap6,

                      // subTitle
                      if (subTitleType == 'songRcmdTag')
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: Dimens.hGapDp5,
                            vertical: Dimens.vGapDp4,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFE7E3A).withOpacity(.5),
                            borderRadius:
                                BorderRadius.circular(Dimens.radiusDp4),
                          ),
                          child: Text(
                            subTitle,
                            style: TextStyle(
                              fontSize: Dimens.fontSp14,
                              color: const Color(0xFFFE7E3A),
                            ),
                          ),
                        ),
                    ],
                  ),

                  // 右侧播放按钮
                  Container(
                    padding: EdgeInsets.fromLTRB(
                      Dimens.hGapDp10,
                      Dimens.vGapDp6,
                      Dimens.hGapDp7,
                      Dimens.vGapDp6,
                    ),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(Dimens.radiusDp12),
                        side: BorderSide(
                          width: 2.w,
                          color: Colours.fontColor4,
                        ),
                      ),
                    ),
                    child: FaIcon(
                      FontAwesomeIcons.play,
                      color: Colours.fontColor4,
                      size: 20.h,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
