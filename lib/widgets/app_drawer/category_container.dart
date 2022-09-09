import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../res/resources.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({
    Key? key,
    this.headerTitle,
    required this.children,
  }) : super(key: key);

  final String? headerTitle;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.symmetric(vertical: Dimens.vGapDp24 / 2),
      decoration: BoxDecoration(
        color: Colours.mainBgColor,
        borderRadius: BorderRadius.circular(Dimens.radiusDp12),
      ),
      child: Column(
        children: [
          // header
          if (headerTitle != null && headerTitle != '')
            Container(
              height: 60.h,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: Dimens.hGapDp24),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1.h,
                    color: Colours.dividerColor,
                  ),
                ),
              ),
              child: Text(
                headerTitle!,
                style: TextStyle(
                  fontSize: Dimens.fontSp16,
                  color: Colours.fontColor4,
                ),
              ),
            ),

          // body
          Column(
            children: children,
          ),
        ],
      ),
    );
  }
}
