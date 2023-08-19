import 'package:flutter/material.dart';

import 'package:troy_client/features/home/presentation/widgets/tab_views.dart';
import 'package:troy_client/features/home/presentation/widgets/tabs.dart';

import '../widgets/latest.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late final TabController tabController =
      TabController(length: 3, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Tabs(tabController: tabController),
        TabViews(tabController: tabController),
        const Latest()
      ],
    );
  }
}
