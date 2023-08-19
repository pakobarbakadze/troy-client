import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:troy_client/main_screen.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MainScreen(),
    ),
  );
}
