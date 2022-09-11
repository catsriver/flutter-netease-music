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
    this.press,
    this.trailing = true,
    this.switchValue,
  }) : super(key: key);

  final SvgIconData icon;
  final String title;

  /// 控制底部边框线显示/隐藏，默认隐藏
  final bool bottom;

  final VoidCallback? press;

  /// 控制右侧 `>` 图标显示/隐藏，默认显示
  final bool trailing;

  /// switch
  final bool? switchValue;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colours.mainBgColor,
      child: InkWell(
        onTap: press,
        highlightColor: const Color(0xFFD2D2D2),
        child: SizedBox(
          height: 75.h,
          child: Row(
            children: [
              Gaps.hGap24,
              Expanded(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: bottom
                        ? Border(
                            bottom: BorderSide(
                                color: Colours.dividerColor, width: 1.h),
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            if (switchValue != null)
                              Switch(
                                value: switchValue!,
                                activeColor: const Color(0xFFF93B38),
                                onChanged: (bool value) {},
                              ),
                          ],
                        ),
                      ),

                      // 间距
                      Gaps.hGap5,

                      // 右侧icon
                      if (trailing)
                        SvgIcon(
                          SvgIcons.chevronRight,
                          size: 28.w,
                          color: Colours.fontColor4,
                        ),

                      // 间距
                      Gaps.hGap10,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
