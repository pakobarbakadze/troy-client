import 'package:flutter/material.dart';

import 'items_list.dart';

class TabViews extends StatelessWidget {
  const TabViews({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: TabBarView(
        controller: tabController,
        children: const [
          ItemsList(),
          ItemsList(),
          ItemsList(),
        ],
      ),
    );
  }
}
