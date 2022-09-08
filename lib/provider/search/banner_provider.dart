import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/banner.dart';

class BannerNotifier extends StateNotifier<List<Banner>> {
  BannerNotifier()
      : super([
          Banner(
            pic:
                'http://p1.music.126.net/BcZXvoTKen7fPMDXezzScQ==/109951167853780577.jpg',
            typeTitle: '新歌首发',
            titleColor: 'red',
          ),
          Banner(
            pic:
                'http://iadmusicmat.music.126.net/e75cf5bed1174fc3b70848a880146ac5.jpg',
            typeTitle: '广告',
            titleColor: 'blue',
          ),
          Banner(
            pic:
                'http://p1.music.126.net/RSVgc3DHmFAWo8aKg3cTJA==/109951167853769104.jpg',
            typeTitle: '新歌首发',
            titleColor: 'red',
          ),
          Banner(
            pic:
                'http://iadmusicmat.music.126.net/1260fabddcf94795acf1fc53b55e26b5.jpg',
            typeTitle: '广告',
            titleColor: 'blue',
          ),
        ]);
}

final bannerProvider = StateNotifierProvider<BannerNotifier, List<Banner>>(
    (ref) => BannerNotifier());
