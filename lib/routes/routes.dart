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
      builder: (context, state) => const PlayMusicScreen(),
    ),
  ],
);
