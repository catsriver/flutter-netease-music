import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../res/resources.dart';
import '../../widgets/common/customAppBar.dart';
import '../../widgets/common/svg_icon.dart';

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
          Container(
            height: 130.h,
            margin: EdgeInsets.only(
              top: (Dimens.vGapDp24 / 2 + 105.w / 2),
              bottom: Dimens.vGapDp24 / 2,
            ),
            decoration: BoxDecoration(
              color: Colours.mainBgColor,
              borderRadius: BorderRadius.circular(Dimens.radiusDp12),
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
        ],
      ),
    );
  }
}
