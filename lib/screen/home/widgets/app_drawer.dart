import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netease_cloud_music/widgets/svg_icon.dart';

import '../../../res/resources.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colours.mainBgColor,
      width: 454.w,
      child: SafeArea(
        top: false,
        child: Column(
          children: [
            AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colours.secondaryBgColor,
              titleSpacing: Dimens.hGapDp24,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // 左侧头像信息
                  GestureDetector(
                    onTap: () {
                      print('点击了用户头像');
                    },
                    child: Row(
                      children: [
                        // 头像
                        SizedBox(
                          width: 40.w,
                          height: 40.w,
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://c-ssl.dtstatic.com/uploads/item/201404/02/20140402105931_wtee5.thumb.400_0.jpeg'),
                          ),
                        ),

                        // 间距
                        Gaps.hGap15,

                        // 用户名
                        Text(
                          '立即登陆',
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
                    onTap: () {
                      print('点击了扫一扫图标');
                    },
                    child: SvgIcon(
                      SvgIcons.scan,
                      size: 40.w,
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
