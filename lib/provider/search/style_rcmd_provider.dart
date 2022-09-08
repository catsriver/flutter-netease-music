import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/slide_songlist.dart';

class StyleRcmdNotifier extends StateNotifier<SlideSongList> {
  StyleRcmdNotifier()
      : super(
          SlideSongList(
            blockName: '为你精选的宝藏歌曲',
            buttonText: '播放',
            creatives: [
              SongResources(
                resources: [
                  Song(
                    title: 'Everytime',
                    subTitle: '昨日上万播放',
                    subTitleType: 'songRcmdTag',
                    imgUrl:
                        'http://p1.music.126.net/s_pIChe1lBxo2ETM-rsS5A==/109951167737835607.jpg',
                    artists: ['褚晨茜', 'Hattie海婷'],
                  ),
                  Song(
                    title: 'Love Quotes',
                    subTitle: '',
                    subTitleType: '',
                    imgUrl:
                        'http://p1.music.126.net/jzlrWXSrTf5m8cMpdBp5UA==/109951167788156703.jpg',
                    artists: ['Jenevieve'],
                  ),
                  Song(
                    title: '风是从哪儿来',
                    subTitle: '昨日十万播放',
                    subTitleType: 'songRcmdTag',
                    imgUrl:
                        'http://p1.music.126.net/J7NZnhttkeme3m-W8lCdRg==/109951167777636138.jpg',
                    artists: ['Bell玲惠'],
                  ),
                ],
              ),
              SongResources(
                resources: [
                  Song(
                    title: "爱上你是一个错",
                    subTitle: "昨日十万播放",
                    subTitleType: "songRcmdTag",
                    imgUrl:
                        "http://p1.music.126.net/ME4BfW2fNSBTFqBXi3D5Ag==/109951167855743116.jpg",
                    artists: ['张小伙', '粥粥zxr'],
                  ),
                  Song(
                    title: "梦到你",
                    subTitle: "",
                    subTitleType: "",
                    imgUrl:
                        "http://p1.music.126.net/cHQMbaBlPgFARNTAgvXTxg==/109951167839805762.jpg",
                    artists: ['沙一汀EL'],
                  ),
                  Song(
                    title: "I Never Told You",
                    subTitle: "昨日上万播放",
                    subTitleType: "songRcmdTag",
                    imgUrl:
                        "http://p1.music.126.net/oyvdDn7wEDocQWogEZavUg==/109951167721170782.jpg",
                    artists: ['ICE'],
                  ),
                ],
              ),
            ],
          ),
        );
}

final styleRcmdProvider =
    StateNotifierProvider<StyleRcmdNotifier, SlideSongList>(
        (ref) => StyleRcmdNotifier());
