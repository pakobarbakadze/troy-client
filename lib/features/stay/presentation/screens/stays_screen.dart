import 'package:flutter/material.dart';

import '../widgets/popular_stays.dart';
import '../widgets/tab_bars.dart';
import '../widgets/tab_views.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 3, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Applications',
          style: TextStyle(fontSize: 36),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_circle,
              color: Color.fromARGB(255, 255, 203, 70),
            ),
            iconSize: 48,
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          TabBars(tabController: _tabController),
          TabViews(tabController: _tabController),
          const PopularStays()
        ],
      ),
    );
  }
}
