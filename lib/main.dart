import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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

    return MaterialApp(
      title: '网易云音乐',
      debugShowCheckedModeBanner: false,
      theme: theme.getTheme(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('网易云音乐'),
          leading: const Icon(Icons.bar_chart),
          actions: const [
            Icon(Icons.camera_alt),
          ],
        ),
      ),
    );
  }
}
