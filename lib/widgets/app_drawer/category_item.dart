import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../res/resources.dart';
import '../common/svg_icon.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.icon,
    required this.title,
    this.bottom = false,
  }) : super(key: key);

  final SvgIconData icon;
  final String title;

  /// 控制底部边框线显示/隐藏，默认隐藏
  final bool bottom;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75.h,
      child: Row(
        children: [
          Gaps.hGap24,
          Expanded(
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: bottom
                    ? Border(
                        bottom:
                            BorderSide(color: Colours.dividerColor, width: 1.h),
                      )
                    : null,
              ),
              child: Row(
                children: [
                  // 左侧icon、title
                  Row(
                    children: [
                      SvgIcon(
                        icon,
                        size: 26.w,
                        color: Colours.fontColor1,
                      ),

                      // 间距
                      Gaps.hGap15,

                      Text(
                        title,
                        style: TextStyle(
                          fontSize: Dimens.fontSp22,
                          color: Colours.fontColor1,
                        ),
                      ),
                    ],
                  ),

                  Gaps.hGap30,

                  // 中间内容
                  Expanded(
                    child: Container(),
                  ),

                  // 间距
                  Gaps.hGap5,

                  // 右侧icon
                  SvgIcon(
                    SvgIcons.chevronRight,
                    size: 28.w,
                    color: Colours.fontColor4,
                  ),

                  // 间距
                  Gaps.hGap5,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
