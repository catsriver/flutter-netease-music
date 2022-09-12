import 'package:flutter/material.dart';

import '../../../res/resources.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
    required this.label,
    required this.iconUrl,
    this.press,
  }) : super(key: key);

  final String label;
  final String iconUrl;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          Image.network(
            iconUrl,
            color: Colours.fontColor2,
            fit: BoxFit.cover,
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: Dimens.fontSp18,
              color: Colours.fontColor3,
            ),
          ),
        ],
      ),
    );
  }
}
