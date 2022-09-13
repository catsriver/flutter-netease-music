import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../res/resources.dart';
import '../../../widgets/common/svg_icon.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.keyboard_arrow_down,
          color: Colours.fontColorWihite,
          size: 60.w,
        ),
        onPressed: () {},
      ),
      title: Column(
        children: [
          Text(
            '再见莫妮卡',
            style: TextStyle(
              fontSize: Dimens.fontSp24,
              color: Colours.fontColorWihite,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '彭席彦',
                style: TextStyle(
                  fontSize: Dimens.fontSp24,
                  color: Colours.fontColor4,
                ),
              ),
              const SvgIcon(
                SvgIcons.chevronRight,
                color: Colours.fontColor4,
              ),
            ],
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.share,
            color: Colours.fontColorWihite,
          ),
          onPressed: () {},
        ),
      ],
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF535353),
              Color(0xFF242424),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
