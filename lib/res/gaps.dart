import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';
import 'dimens.dart';

class Gaps {
  // 水平间隔
  static final Widget hGap5 = SizedBox(width: Dimens.hGapDp5);
  static final Widget hGap7 = SizedBox(width: Dimens.hGapDp7);
  static final Widget hGap24 = SizedBox(width: Dimens.hGapDp24);

  // 垂直间隔
  static final Widget vGap6 = SizedBox(height: Dimens.vGapDp6);
  static final Widget vGap15 = SizedBox(height: Dimens.vGapDp15);
  static final Widget vGap24 = SizedBox(height: Dimens.vGapDp24);

  static final Widget line = Divider(
    color: Colours.dividerColor,
    height: 1.h,
  );
}
