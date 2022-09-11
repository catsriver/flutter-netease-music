import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../res/resources.dart';

class RoundedTextButton extends StatelessWidget {
  const RoundedTextButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String text;

  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colours.mainBgColor,
      borderRadius: BorderRadius.circular(Dimens.radiusDp12),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: press,
        highlightColor: const Color(0xFFD2D2D2),
        child: Container(
          height: 75.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimens.radiusDp12),
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: Dimens.fontSp24,
              color: Colours.fontColor2,
            ),
          ),
        ),
      ),
    );
  }
}
