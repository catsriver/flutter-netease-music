import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../res/resources.dart';
import '../common/svg_icon.dart';

class MyDrawerHeader extends StatelessWidget {
  const MyDrawerHeader({
    Key? key,
    required this.avatarUrl,
    required this.nickName,
    this.onLeadingPress,
    this.onTrailingPress,
  }) : super(key: key);

  final String avatarUrl;
  final String nickName;
  final VoidCallback? onLeadingPress;
  final VoidCallback? onTrailingPress;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colours.secondaryBgColor,
      titleSpacing: Dimens.hGapDp24,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 左侧头像信息
          GestureDetector(
            onTap: onLeadingPress,
            child: Row(
              children: [
                // 头像
                SizedBox(
                  width: 40.w,
                  height: 40.w,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(avatarUrl),
                  ),
                ),

                // 间距
                Gaps.hGap15,

                // 用户名
                Text(
                  nickName,
                  style: TextStyle(
                    fontSize: Dimens.fontSp22,
                    color: Colours.fontColor1,
                  ),
                ),

                // 箭头
                SvgIcon(
                  SvgIcons.chevronRight,
                  size: 28.h,
                ),
              ],
            ),
          ),

          // 右侧扫码图标
          GestureDetector(
            onTap: onTrailingPress,
            child: SvgIcon(
              SvgIcons.scan,
              size: 40.w,
            ),
          ),
        ],
      ),
    );
  }
}
