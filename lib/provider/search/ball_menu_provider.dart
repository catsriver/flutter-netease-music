import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/ball_menu.dart';

class BallMenuNotifier extends StateNotifier<List<BallMenu>> {
  BallMenuNotifier()
      : super([
          BallMenu(
            name: "每日推荐",
            iconUrl:
                "http://p1.music.126.net/4DpSgAVpJny4Ewf-Xw_WQQ==/109951163986641971.jpg",
            url: "orpheus://songrcmd",
          ),
          BallMenu(
            name: "私人FM",
            iconUrl:
                "http://p1.music.126.net/Shi7cRT1bDhwpVDM7AOFXg==/109951165265330616.jpg",
            url: "orpheus://privatefm",
          ),
          BallMenu(
            name: "歌单",
            iconUrl:
                "http://p1.music.126.net/uG5p6CnwAHrLqOkaSeRlnA==/109951163986649164.jpg",
            url: "orpheus://playlistCollection",
          ),
          BallMenu(
            name: "每日推荐",
            iconUrl:
                "http://p1.music.126.net/4DpSgAVpJny4Ewf-Xw_WQQ==/109951163986641971.jpg",
            url: "orpheus://songrcmd",
          ),
          BallMenu(
            name: "私人FM",
            iconUrl:
                "http://p1.music.126.net/Shi7cRT1bDhwpVDM7AOFXg==/109951165265330616.jpg",
            url: "orpheus://privatefm",
          ),
          BallMenu(
            name: "歌单",
            iconUrl:
                "http://p1.music.126.net/uG5p6CnwAHrLqOkaSeRlnA==/109951163986649164.jpg",
            url: "orpheus://playlistCollection",
          ),
          BallMenu(
            name: "每日推荐",
            iconUrl:
                "http://p1.music.126.net/4DpSgAVpJny4Ewf-Xw_WQQ==/109951163986641971.jpg",
            url: "orpheus://songrcmd",
          ),
          BallMenu(
            name: "私人FM",
            iconUrl:
                "http://p1.music.126.net/Shi7cRT1bDhwpVDM7AOFXg==/109951165265330616.jpg",
            url: "orpheus://privatefm",
          ),
          BallMenu(
            name: "歌单",
            iconUrl:
                "http://p1.music.126.net/uG5p6CnwAHrLqOkaSeRlnA==/109951163986649164.jpg",
            url: "orpheus://playlistCollection",
          ),
        ]);
}

final ballMenuProvider =
    StateNotifierProvider<BallMenuNotifier, List<BallMenu>>(
        (ref) => BallMenuNotifier());
