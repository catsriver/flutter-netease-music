import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/slide_playlist.dart';

class PlaylistRcmdNotifier extends StateNotifier<SlidePlaylist> {
  PlaylistRcmdNotifier()
      : super(
          SlidePlaylist(
            blockName: '推荐歌单',
            buttonText: '更多',
            creatives: [
              PlayList(
                title: 'keep 跑步歌单『前方高能』',
                imageUrl:
                    'http://p1.music.126.net/iy7L0RHu_mHhQ6EMLvbf0A==/109951164226850851.jpg',
                creativeType: 'scroll_playlist',
                labelTexts: ["欧美", "流行", "电子"],
                playCount: '0.78亿',
              ),
              PlayList(
                title: '『今天从《AZORAland》听起|私人雷达',
                imageUrl:
                    'http://p1.music.126.net/ypmKWiSzi4G6zZK9tPcyhw==/109951165496120378.jpg',
                creativeType: 'list',
                labelTexts: ["流行"],
                playCount: '125.9亿',
              ),
              PlayList(
                title: '苦难都没有泪痕.',
                imageUrl:
                    'http://p1.music.126.net/CccOnZOB28sMuY6wjjAsKg==/109951164770764464.jpg',
                creativeType: 'list',
                labelTexts: ["另类/独立", "浪漫"],
                playCount: '22.1亿',
              ),
              PlayList(
                title: '【轻音乐】（放松，舒缓，减压，治愈）',
                imageUrl:
                    'http://p1.music.126.net/UQlabhk8Twk0BSqtvJbnZg==/109951165984872278.jpg',
                creativeType: 'list',
                labelTexts: ["放松", "安静", "轻音乐"],
                playCount: '3.1亿',
              ),
            ],
          ),
        );
}

final playlistRcmdProvider =
    StateNotifierProvider<PlaylistRcmdNotifier, SlidePlaylist>(
        (ref) => PlaylistRcmdNotifier());
