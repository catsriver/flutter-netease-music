import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../res/resources.dart';

class RoundedSearchBox extends StatelessWidget {
  const RoundedSearchBox({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53.h,
      decoration: BoxDecoration(
        color: const Color(0xFFFDFDFD),
        borderRadius: BorderRadius.circular(53.h),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            FontAwesomeIcons.magnifyingGlass,
            size: 22.h,
            color: Colours.fontColor3,
          ),
          Gaps.hGap7,
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: Colours.fontColor3),
          ),
          Gaps.hGap7,
          Text(
            subTitle,
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: Colours.fontColor4),
          ),
        ],
      ),
    );
  }
}
