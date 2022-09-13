import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netease_cloud_music/screen/play_music/play_music_screen.dart';

import 'provider/theme_provider.dart';

void main() {
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.read(themeProvider.notifier);

    return ScreenUtilInit(
      designSize: const Size(540, 1200), // 一加8T
      builder: (_, __) {
        return MaterialApp(
          title: '网易云音乐',
          debugShowCheckedModeBanner: false,
          theme: theme.getTheme(),
          // home: const HomeScreen(),
          home: const PlayMusicScreen(),
        );
      },
    );
  }
}
