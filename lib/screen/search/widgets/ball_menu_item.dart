import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../res/resources.dart';

class BallMenuItem extends StatelessWidget {
  const BallMenuItem({
    Key? key,
    required this.name,
    required this.iconUrl,
    this.press,
  }) : super(key: key);

  final String name;
  final String iconUrl;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70.w,
          height: 70.h,
          margin: EdgeInsets.symmetric(horizontal: Dimens.hGapDp24 / 2),
          decoration: const BoxDecoration(
            color: Color(0xFFFEF3F2),
            shape: BoxShape.circle,
          ),
          child: Image.network(
            iconUrl,
            height: 35.h,
            color: const Color(0xFFFD5855),
          ),
        ),
        Gaps.vGap6,
        Text(
          name,
          style: TextStyle(
            fontSize: Dimens.fontSp16,
            color: const Color(0xFF7F7F7F),
          ),
        ),
      ],
    );
  }
}
