import 'dart:convert';

import 'package:flutter/material.dart';

Banner bannerFromJson(String str) => Banner.fromJson(json.decode(str));

String bannerToJson(Banner data) => json.encode(data.toJson());

class Banner {
  Banner({
    required this.pic,
    required this.typeTitle,
    required this.titleColor,
  });

  final String pic;
  final String typeTitle;
  final String titleColor;

  Color get titleBgColor {
    switch (titleColor) {
      case 'red':
        return Colors.red;
      case 'blue':
        return Colors.blue;
      default:
        throw '当前颜色未定义, 请在titleBgColor中定义';
    }
  }

  factory Banner.fromJson(Map<String, dynamic> json) => Banner(
        pic: json["pic"],
        typeTitle: json["typeTitle"],
        titleColor: json["titleColor"],
      );

  Map<String, dynamic> toJson() => {
        "pic": pic,
        "typeTitle": typeTitle,
        "titleColor": titleColor,
      };
}
