import 'dart:convert';

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
