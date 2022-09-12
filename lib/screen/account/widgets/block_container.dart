import 'package:flutter/material.dart';

import '../../../res/resources.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({
    Key? key,
    required this.child,
    this.height,
    this.margin,
    this.padding,
  }) : super(key: key);

  final Widget child;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: Colours.mainBgColor,
        borderRadius: BorderRadius.circular(Dimens.radiusDp12),
      ),
      child: child,
    );
  }
}
