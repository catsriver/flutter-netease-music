import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../res/resources.dart';
import '../common/rounded_text_button.dart';
import '../common/svg_icon.dart';
import 'category_container.dart';
import 'category_item.dart';
import 'my_drawer_body.dart';
import 'my_drawer_header.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({
    Key? key,
  }) : super(key: key);

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  bool _switchValue = false;

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

                // 快捷入口
                CategoryContainer(
                  children: [
                    CategoryItem(
                      icon: SvgIcons.mail,
                      title: '我的消息',
                      bottom: true,
                      press: () {
                        print('我的消息');
                      },
                    ),
                    const CategoryItem(
                      icon: SvgIcons.archor,
                      title: '云贝中心',
                    ),
                  ],
                ),

                // 音乐服务
                const CategoryContainer(
                  headerTitle: '音乐服务',
                  children: [
                    CategoryItem(
                      icon: SvgIcons.bookmarks,
                      title: '云村有票',
                    ),
                    CategoryItem(
                      icon: SvgIcons.shoppingCart,
                      title: '商城',
                      imgUrl:
                          'https://c-ssl.dtstatic.com/uploads/item/201304/24/20130424222243_jrBCs.thumb.400_0.jpeg_webp',
                      subTitle: '潮牌真无限耳机限时3折抢',
                    ),
                    CategoryItem(
                      icon: SvgIcons.ghost,
                      title: '多多西西口袋',
                    ),
                    CategoryItem(
                      icon: SvgIcons.activity,
                      title: 'Beat交易平台',
                    ),
                    CategoryItem(
                      icon: SvgIcons.brandDiscord,
                      title: '游戏专区',
                    ),
                    CategoryItem(
                      icon: SvgIcons.bellRinging2,
                      title: '口袋彩铃',
                    ),
                  ],
                ),

                // 其他
                CategoryContainer(
                  headerTitle: '其他',
                  children: [
                    CategoryItem(
                      icon: SvgIcons.settings,
                      title: '设置',
                      trailing: false,
                      switchValue: _switchValue,
                      onSwitchChanged: (bool value) {
                        setState(() {
                          _switchValue = !_switchValue;
                        });
                      },
                    ),
                    const CategoryItem(
                      icon: SvgIcons.moon,
                      title: '深色模式',
                    ),
                    const CategoryItem(
                      icon: SvgIcons.clock,
                      title: '定时关闭',
                    ),
                    const CategoryItem(
                      icon: SvgIcons.shirt,
                      title: '个性装扮',
                    ),
                    const CategoryItem(
                      icon: SvgIcons.headphones,
                      title: '边听边存',
                      subTitle: '未开启',
                    ),
                    const CategoryItem(
                      icon: SvgIcons.deviceDesktopAnalytics,
                      title: '在线听歌免流量',
                    ),
                    const CategoryItem(
                      icon: SvgIcons.ban,
                      title: '音乐黑名单',
                    ),
                    const CategoryItem(
                      icon: SvgIcons.shieldCheck,
                      title: '青少年模式',
                      subTitle: '未开启',
                    ),
                    const CategoryItem(
                      icon: SvgIcons.alarm,
                      title: '音乐闹钟',
                    ),
                  ],
                ),

                // 用户
                const CategoryContainer(
                  children: [
                    CategoryItem(
                      icon: SvgIcons.receipt,
                      title: '我的订单',
                    ),
                    CategoryItem(
                      icon: SvgIcons.ticket,
                      title: '优惠券',
                    ),
                    CategoryItem(
                      icon: SvgIcons.headset,
                      title: '我的客服',
                    ),
                    CategoryItem(
                      icon: SvgIcons.share,
                      title: '分享网易云音乐',
                    ),
                    CategoryItem(
                      icon: SvgIcons.certificate,
                      title: '个人信息收集与使用清单',
                    ),
                    CategoryItem(
                      icon: SvgIcons.brandUbuntu,
                      title: '个人信息第三方共享清单',
                    ),
                    CategoryItem(
                      icon: SvgIcons.shieldLock,
                      title: '个人信息与隐私保护',
                    ),
                    CategoryItem(
                      icon: SvgIcons.alertCircle,
                      title: '关于',
                    ),
                  ],
                ),

                // 按钮
                Padding(
                  padding: EdgeInsets.symmetric(vertical: Dimens.hGapDp24 / 2),
                  child: RoundedTextButton(
                    text: '关闭网易云音乐',
                    press: () {
                      print('关闭网易云音乐');
                    },
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
