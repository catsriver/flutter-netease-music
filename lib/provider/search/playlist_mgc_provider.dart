import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/slide_playlist.dart';

class PlaylistMgcNotifier extends StateNotifier<SlidePlaylist> {
  PlaylistMgcNotifier()
      : super(
          SlidePlaylist(
            blockName: '你的雷达歌单',
            buttonText: '更多',
            creatives: [
              PlayList(
                title: '听你爱的寂寞先生|华语私人雷达',
                imageUrl:
                    'http://p1.music.126.net/97rKdVwM-62_zCZFhH3yog==/109951165665026484.jpg',
                creativeType: 'list',
                labelTexts: [],
                playCount: '13.8亿',
              ),
              PlayList(
                title: '还在听《隔岸》吗|时光雷达',
                imageUrl:
                    'http://p1.music.126.net/anp0k47TI7eUYRHJ0pIgJQ==/109951165657935652.jpg',
                creativeType: 'list',
                labelTexts: [],
                playCount: '53.2亿',
              ),
              PlayList(
                title:
                    '从《Somber Moods 《Mystic Moments Mix》 - Frank Borell》开启宝藏音乐环游|宝藏雷达',
                imageUrl:
                    'http://p1.music.126.net/DjT8G8kGsjy-kQcxugprVA==/109951165654112751.jpg',
                creativeType: 'list',
                labelTexts: [],
                playCount: '1.5亿',
              ),
              PlayList(
                title: 'The xx和更多好听的|乐迷雷达',
                imageUrl:
                    'http://p1.music.126.net/8UbbHN0JikDUOX02EbbK8Q==/109951165664967017.jpg',
                creativeType: 'list',
                labelTexts: [],
                playCount: '1.1亿',
              ),
            ],
          ),
        );
}

final playlistMgcProvider =
    StateNotifierProvider<PlaylistMgcNotifier, SlidePlaylist>(
        (ref) => PlaylistMgcNotifier());
