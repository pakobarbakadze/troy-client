import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:troy_client/providers/screen_provider.dart';

import 'package:troy_client/features/shared/widgets/bottom_nav/bottom_nav.dart';

var kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 65, 73, 100));

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screen = ref.watch(screenProvider);

    return MaterialApp(
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: AppBarTheme(
          centerTitle: false,
          backgroundColor: kColorScheme.background,
          foregroundColor: kColorScheme.primary,
          elevation: 0,
        ),
      ),
      home: Scaffold(
        bottomNavigationBar: const BottomNav(),
        body: screen,
      ),
    );
  }
}
