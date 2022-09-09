import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netease_cloud_music/widgets/common/svg_icon.dart';

import '../../res/resources.dart';
import 'my_drawer_body.dart';
import 'my_drawer_header.dart';

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
            // Header
            MyDrawerHeader(
              avatarUrl:
                  'https://c-ssl.dtstatic.com/uploads/item/201404/02/20140402105931_wtee5.thumb.400_0.jpeg',
              nickName: '立即登陆',
              onLeadingPress: () {
                print('点击了用户头像');
              },
              onTrailingPress: () {
                print('点击了扫一扫');
              },
            ),

            // Body
            MyDrawerBody(
              children: [
                // 黑胶VIP入口
                Container(
                  margin: EdgeInsets.symmetric(vertical: Dimens.vGapDp24 / 2),
                  padding: EdgeInsets.symmetric(horizontal: Dimens.hGapDp24),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      Color(0xFF242442),
                      Color(0xFF404040),
                    ]),
                    borderRadius: BorderRadius.circular(Dimens.radiusDp24),
                  ),
                  child: Column(
                    children: [
                      // Top
                      SizedBox(
                        height: 102.h,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // 第一行
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '开通黑胶VIP',
                                  style: TextStyle(
                                    fontSize: Dimens.fontSp22,
                                    color: Colours.fontColorWihite,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: Dimens.hGapDp15,
                                    vertical: Dimens.hGapDp7,
                                  ),
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(38.h),
                                      side: BorderSide(
                                        width: 2.h,
                                        color: const Color(0xFF807A7C),
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    '会员中心',
                                    style: TextStyle(
                                      fontSize: Dimens.fontSp16,
                                      color: Colours.fontColor5,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // 第二行
                            Row(
                              children: [
                                Text(
                                  '立享超21项专属特权',
                                  style: TextStyle(
                                    fontSize: Dimens.fontSp16,
                                    color: Colours.fontColor4,
                                  ),
                                ),
                                SvgIcon(
                                  SvgIcons.chevronRight,
                                  color: Colours.fontColor4,
                                  size: 16.w,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),

                      // 分割线
                      Gaps.line,

                      // Bottom
                      SizedBox(
                        height: 63.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '受邀专享，黑胶首月仅0.88元！',
                              style: TextStyle(
                                fontSize: Dimens.fontSp18,
                                color: Colours.fontColor4,
                              ),
                            ),
                            Container(
                              width: 34.w,
                              height: 34.h,
                              decoration: BoxDecoration(
                                color: const Color(0xFFE34900),
                                borderRadius:
                                    BorderRadius.circular(Dimens.radiusDp4),
                              ),
                              child: Text(
                                '黑胶0.88元',
                                style: TextStyle(
                                  fontSize: Dimens.fontSp10,
                                  color: Colours.fontColorWihite,
                                ),
                                textAlign: TextAlign.center,
                                maxLines: 2,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
