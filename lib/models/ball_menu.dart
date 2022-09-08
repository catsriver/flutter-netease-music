import 'dart:convert';

BallMenu ballMenuFromJson(String str) => BallMenu.fromJson(json.decode(str));

String ballMenuToJson(BallMenu data) => json.encode(data.toJson());

class BallMenu {
  BallMenu({
    required this.name,
    required this.iconUrl,
    required this.url,
  });

  final String name;
  final String iconUrl;
  final String url;

  factory BallMenu.fromJson(Map<String, dynamic> json) => BallMenu(
        name: json["name"],
        iconUrl: json["iconUrl"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "iconUrl": iconUrl,
        "url": url,
      };
}
