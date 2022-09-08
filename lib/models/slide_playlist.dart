import 'dart:convert';

PlayList playListFromJson(String str) => PlayList.fromJson(json.decode(str));

String playListToJson(PlayList data) => json.encode(data.toJson());

class PlayList {
  PlayList({
    required this.title,
    required this.imageUrl,
    required this.creativeType,
    required this.labelTexts,
    required this.playCount,
  });

  final String title;
  final String imageUrl;
  final String creativeType;
  final List<String> labelTexts;
  final String playCount;

  factory PlayList.fromJson(Map<String, dynamic> json) => PlayList(
        title: json["title"],
        imageUrl: json["imageUrl"],
        creativeType: json["creativeType"],
        labelTexts: List<String>.from(json["labelTexts"].map((x) => x)),
        playCount: json["playCount"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "imageUrl": imageUrl,
        "labelTexts": List<dynamic>.from(labelTexts.map((x) => x)),
        "playCount": playCount,
      };
}

class SlidePlaylist {
  SlidePlaylist({
    required this.blockName,
    required this.buttonText,
    required this.creatives,
  });

  final String blockName;
  final String buttonText;
  final List<PlayList> creatives;
}
