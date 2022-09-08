import 'dart:convert';

Song songFromJson(String str) => Song.fromJson(json.decode(str));

String songToJson(Song data) => json.encode(data.toJson());

class Song {
  Song({
    required this.title,
    required this.subTitle,
    required this.subTitleType,
    required this.imgUrl,
    required this.artists,
  });

  final String title;
  final String subTitle;
  final String subTitleType;
  final String imgUrl;
  final List<String> artists;

  factory Song.fromJson(Map<String, dynamic> json) => Song(
        title: json["title"],
        subTitle: json["subTitle"],
        subTitleType: json["subTitleType"],
        imgUrl: json["imgUrl"],
        artists: List<String>.from(json["artists"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "subTitle": subTitle,
        "subTitleType": subTitleType,
        "imgUrl": imgUrl,
        "artists": List<dynamic>.from(artists.map((x) => x)),
      };
}

class SongResources {
  SongResources({required this.resources});

  final List<Song> resources;
}

class SlideSongList {
  SlideSongList({
    required this.blockName,
    required this.buttonText,
    required this.creatives,
  });

  final String blockName;
  final String buttonText;
  final List<SongResources> creatives;
}
