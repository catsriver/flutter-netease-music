import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../res/resources.dart';

class ThemeNotifier extends StateNotifier<ThemeData> {
  ThemeNotifier() : super(ThemeData());

  ThemeData getTheme() {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        elevation: 0,
        centerTitle: true,
        foregroundColor: Colours.fontColor1,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        elevation: 0,
        backgroundColor: Colours.mainBgColor,
        selectedItemColor: Colours.fontColor2,
        unselectedItemColor: Colours.fontColor4,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyles.textSize12,
        unselectedLabelStyle: TextStyles.textSize12,
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: Colours.primaryColor,
      ),
      scaffoldBackgroundColor: Colours.secondaryBgColor,
    );
  }
}

final themeProvider =
    StateNotifierProvider<ThemeNotifier, ThemeData>((ref) => ThemeNotifier());
