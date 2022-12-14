import 'package:flutter/material.dart';

import '../../res/resources.dart';

class MyDrawerBody extends StatelessWidget {
  const MyDrawerBody({
    Key? key,
    required this.children,
  }) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colours.secondaryBgColor,
        child: ListView(
          padding: EdgeInsets.fromLTRB(
            Dimens.hGapDp24,
            Dimens.hGapDp24 / 2,
            Dimens.hGapDp24,
            Dimens.hGapDp24,
          ),
          children: children,
        ),
      ),
    );
  }
}
