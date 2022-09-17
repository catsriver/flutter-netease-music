import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'provider/theme_provider.dart';
import 'routes/routes.dart';

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
        return MaterialApp.router(
          title: '网易云音乐',
          debugShowCheckedModeBanner: false,
          theme: theme.getTheme(),
          routeInformationProvider: routes.routeInformationProvider,
          routeInformationParser: routes.routeInformationParser,
          routerDelegate: routes.routerDelegate,
        );
      },
    );
  }
}
