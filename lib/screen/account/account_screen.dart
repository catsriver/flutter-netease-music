import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../res/resources.dart';
import '../../widgets/common/customAppBar.dart';
import '../../widgets/common/svg_icon.dart';
import 'widgets/block_container.dart';
import 'widgets/list_item.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        middle: const Opacity(opacity: 0),
        trailing: IconButton(
          icon: const FaIcon(FontAwesomeIcons.magnifyingGlass),
          onPressed: () {},
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: Dimens.hGapDp24),
        children: [
          // 用户头像/立即登陆
          RoundedContainer(
            height: 130.h,
            margin: EdgeInsets.only(
              top: (Dimens.vGapDp24 / 2 + 105.w / 2),
              bottom: Dimens.vGapDp24 / 2,
            ),
            child: Stack(
              alignment: AlignmentDirectional.topCenter,
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: -105.w / 2,
                  child: SizedBox(
                    width: 105.w,
                    height: 105.w,
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://via.placeholder.com/150',
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: Dimens.vGapDp30,
                  child: GestureDetector(
                    onTap: () {
                      print('立即登陆');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '立即登陆',
                          style: TextStyle(
                            fontSize: Dimens.fontSp28,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SvgIcon(
                          SvgIcons.chevronRightBold,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // 音乐应用
          RoundedContainer(
            margin: EdgeInsets.symmetric(vertical: Dimens.hGapDp24),
            padding: EdgeInsets.all(Dimens.vGapDp15),
            child: Column(
              children: [
                // 音乐应用
                GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 1 / 1.3,
                  ),
                  itemCount: 8,
                  itemBuilder: (_, index) => ListItem(
                    label: '最近播放',
                    iconUrl:
                        'http://p1.music.126.net/4DpSgAVpJny4Ewf-Xw_WQQ==/109951163986641971.jpg',
                    press: () {
                      print('最近播放');
                    },
                  ),
                ),

                Gaps.line,

                // 添加音乐应用
                GestureDetector(
                  onTap: () {
                    print('添加音乐应用');
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: Dimens.vGapDp15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgIcon(
                          SvgIcons.plus,
                          color: Colours.fontColor4,
                          size: 30.h,
                        ),
                        const Text(
                          '音乐应用',
                          style: TextStyle(
                            color: Colours.fontColor4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
