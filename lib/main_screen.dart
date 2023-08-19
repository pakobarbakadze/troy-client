import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:troy_client/providers/screen_provider.dart';

import 'package:troy_client/features/shared/bottom_nav/bottom_nav.dart';

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({super.key});

  @override
  ConsumerState<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final screen = ref.watch(screenProvider);

    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFE2E2E2),
        bottomNavigationBar: const BottomNav(),
        body: screen,
      ),
    );
  }
}
