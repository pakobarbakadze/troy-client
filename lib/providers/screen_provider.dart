import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:troy_client/features/cart/presentation/screens/cart_screen.dart';
import 'package:troy_client/features/profile/presentation/screens/profile_screen.dart';
import 'package:troy_client/features/search/presentation/screens/search_screen.dart';

import '../features/stay/presentation/screens/add_stay_screen.dart';
import '../features/stay/presentation/screens/stays_screen.dart';

List<Widget> screenList = const [
  HomeScreen(),
  SearchScreen(),
  AddStayScreen(),
  CartScreen(),
  ProfileScreen()
];

final screenProvider =
    StateNotifierProvider<ScreenNotifier, Widget>((ref) => ScreenNotifier());

class ScreenNotifier extends StateNotifier<Widget> {
  ScreenNotifier() : super(screenList[0]);

  void setScreen(int index) {
    state = screenList[index];
  }

  int get screenIndex {
    return screenList.indexOf(state);
  }
}
