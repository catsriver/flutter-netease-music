import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../res/resources.dart';

class BannerItem extends StatelessWidget {
  const BannerItem({
    Key? key,
    required this.imgUrl,
    required this.title,
    required this.titleColor,
  }) : super(key: key);

  final String imgUrl;
  final String title;
  final Color titleColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190.h,
      margin: EdgeInsets.symmetric(
          horizontal: Dimens.hGapDp24, vertical: Dimens.vGapDp24 / 2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(Dimens.radiusDp12),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          Image.network(
            imgUrl,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: Dimens.hGapDp10,
                vertical: Dimens.vGapDp6,
              ),
              decoration: ShapeDecoration(
                color: titleColor,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: titleColor.withOpacity(.5),
                    width: 1.w,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimens.radiusDp12),
                    bottomRight: Radius.circular(Dimens.radiusDp12),
                  ),
                ),
              ),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: Dimens.fontSp16,
                  color: Colours.fontColorWihite,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
