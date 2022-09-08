import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../res/resources.dart';

class SlidePlaylist extends StatelessWidget {
  const SlidePlaylist({
    Key? key,
    required this.imgUrl,
    required this.title,
    required this.playCount,
    required this.creativeType,
  }) : super(key: key);

  final String title;
  final String imgUrl;
  final String playCount;
  final String creativeType;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimens.hGapDp24 / 2),
      width: 150.w,
      child: Column(
        children: [
          // 顶部图片
          Container(
            height: 150.h,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimens.radiusDp12),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                // 背景图片
                Image.network(
                  imgUrl,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),

                // 播放数
                if (creativeType == 'list')
                  Positioned(
                    top: 6.h,
                    right: 6.w,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimens.hGapDp10,
                        vertical: Dimens.vGapDp6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(26.h),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.play_arrow,
                            color: Colours.fontColorWihite,
                            size: 14.h,
                          ),
                          Gaps.hGap5,
                          Text(
                            playCount,
                            style: TextStyle(
                              fontSize: Dimens.fontSp14,
                              color: Colours.fontColorWihite,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                // 滚动图标
                if (creativeType == 'scroll_playlist')
                  Positioned(
                    top: 10.h,
                    right: 12.w,
                    child: Icon(
                      Icons.recycling_rounded,
                      color: Colours.fontColorWihite,
                      size: 16.h,
                    ),
                  ),
              ],
            ),
          ),

          // 间距
          Gaps.vGap6,

          // 底部文本
          Text(
            title,
            style: TextStyle(
              fontSize: Dimens.fontSp18,
              color: Colours.fontColor1,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
