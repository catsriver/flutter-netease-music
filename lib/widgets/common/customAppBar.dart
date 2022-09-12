import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../util/keys.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    this.leading,
    required this.middle,
    required this.trailing,
    this.gradient = false,
  }) : super(key: key);

  final Widget? leading;
  final Widget middle;
  final Widget trailing;

  /// 是否开启背景渐变, 默认关闭
  final bool gradient;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading ??
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.bars),
            onPressed: () {
              homeScaffoldKey.currentState!.openDrawer();
            },
          ),
      titleSpacing: 0,
      title: middle,
      actions: [
        trailing,
      ],
      flexibleSpace: gradient
          ? Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFDDDDDD),
                    Color(0xFFEBEBEB),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            )
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
