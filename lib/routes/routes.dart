import 'package:go_router/go_router.dart';

import '../screen/home/home_screen.dart';
import '../screen/play_music/play_music_screen.dart';

final GoRouter routes = GoRouter(
  routes: [
    GoRoute(
      path: HomeScreen.routeName,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: PlayMusicScreen.routeName,
      builder: (context, state) => const PlayMusicScreen(
        name: '偏爱',
        id: 5238992,
        coverImg:
            'http://p1.music.126.net/L-7tS-3YBuh558I8OYbA3g==/6667438510890774.jpg',
        artists: [],
        commentCounts: 14500,
        coverCounts: 66593,
      ),
    ),
  ],
);
