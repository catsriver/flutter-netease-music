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
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 0,
        backgroundColor: Colours.mainBgColor,
        selectedItemColor: Colours.fontColor2,
        unselectedItemColor: Colours.fontColor4,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyles.textSize14,
        unselectedLabelStyle: TextStyles.textSize14,
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: Colours.primaryColor,
      ),
      scaffoldBackgroundColor: Colours.secondaryBgColor,
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: Dimens.fontSp22,
          color: Colours.fontColor1,
        ),
      ),
    );
  }
}

final themeProvider =
    StateNotifierProvider<ThemeNotifier, ThemeData>((ref) => ThemeNotifier());
