import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../res/resources.dart';
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
          ],
        ),
      ),
    );
  }
}
