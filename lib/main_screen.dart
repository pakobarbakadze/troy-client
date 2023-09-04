import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:troy_client/providers/screen_provider.dart';

import 'package:troy_client/features/shared/widgets/bottom_nav/bottom_nav.dart';

import 'config/theme/theme.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screen = ref.watch(screenProvider);

    return MaterialApp(
      theme: theme(),
      home: Scaffold(
        bottomNavigationBar: const BottomNav(),
        body: screen,
      ),
    );
  }
}
