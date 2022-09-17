import './artist.dart';

class SongData {
  SongData({
    required this.name,
    required this.id,
    required this.artists,
    required this.coverImg,
    required this.commentCounts,
    required this.coverCounts,
  });

  final String name; // 歌曲名称
  final int id; // 歌曲id
  final String coverImg; // 歌曲封面
  final List<Artist> artists; // 歌手
  final int commentCounts; // 评论数
  final int coverCounts; // 翻唱数
}
