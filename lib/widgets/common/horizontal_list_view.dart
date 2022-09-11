import 'package:flutter/material.dart';

import '../../res/resources.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({
    Key? key,
    required this.children,
    required this.prototypeItem,
    this.padding,
  }) : super(key: key);

  final List<Widget> children;
  final Widget prototypeItem;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IgnorePointer(
          child: Opacity(
            opacity: 0.0,
            child: prototypeItem,
          ),
        ),
        const SizedBox(width: double.infinity),
        Positioned.fill(
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: padding ??
                EdgeInsets.symmetric(horizontal: Dimens.hGapDp24 / 2),
            children: children,
          ),
        ),
      ],
    );
  }
}
