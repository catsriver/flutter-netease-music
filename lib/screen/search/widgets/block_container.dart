import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../res/resources.dart';

class BlockContainer extends StatelessWidget {
  const BlockContainer({
    Key? key,
    required this.blockName,
    this.buttonText,
    this.onButtonClick,
  }) : super(key: key);

  final String blockName;
  final String? buttonText;
  final VoidCallback? onButtonClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: Dimens.vGapDp24),
      decoration: BoxDecoration(
        color: Colours.mainBgColor,
        borderRadius: BorderRadius.circular(Dimens.radiusDp12),
      ),
      child: Column(
        children: [
          // BlockHeader
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimens.hGapDp24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  blockName,
                  style: TextStyle(
                    fontSize: Dimens.fontSp26,
                    color: Colours.fontColor1,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: Dimens.vGapDp6,
                    horizontal: Dimens.hGapDp15,
                  ),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: const Color(0xFFE6E6E6),
                        width: 1.w,
                      ),
                      borderRadius: BorderRadius.circular(40.h),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: onButtonClick,
                    child: Row(
                      children: [
                        Text(
                          buttonText ?? '更多',
                          style: TextStyle(
                            fontSize: Dimens.fontSp18,
                            color: Colours.fontColor1,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 14.w,
                          color: Colours.fontColor1,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // 间隙
          Gaps.vGap15,

          // BlockScrollList
        ],
      ),
    );
  }
}
