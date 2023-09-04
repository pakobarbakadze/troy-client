import 'package:flutter/material.dart';

var kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 65, 73, 100));

ThemeData theme() {
  return ThemeData().copyWith(
    colorScheme: kColorScheme,
    scaffoldBackgroundColor: kColorScheme.background,
    appBarTheme: appBarTheme(),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme().copyWith(
    centerTitle: false,
    backgroundColor: kColorScheme.background,
    foregroundColor: kColorScheme.primary,
    elevation: 0,
  );
}
