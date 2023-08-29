import 'package:flutter/material.dart';

class TabBars extends StatelessWidget {
  const TabBars({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: TabBar(
        controller: _tabController,
        labelColor: Colors.black,
        labelStyle: const TextStyle(fontSize: 24),
        indicatorColor: Colors.transparent,
        tabAlignment: TabAlignment.start,
        isScrollable: true,
        tabs: const [
          Tab(text: 'Current'),
          Tab(text: 'Executed'),
          Tab(text: 'All'),
        ],
      ),
    );
  }
}
