import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../res/resources.dart';

class RoundedTextButton extends StatelessWidget {
  const RoundedTextButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.h,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(vertical: Dimens.hGapDp24 / 2),
      decoration: BoxDecoration(
        color: Colours.mainBgColor,
        borderRadius: BorderRadius.circular(Dimens.radiusDp12),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: Dimens.fontSp24,
          color: Colours.fontColor2,
        ),
      ),
    );
  }
}
