import 'package:flutter/material.dart';

import 'view_items.dart';

class TabViews extends StatelessWidget {
  const TabViews({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 175,
      child: TabBarView(
        controller: _tabController,
        children: const [
          ViewItems(),
          ViewItems(),
          ViewItems(),
        ],
      ),
    );
  }
}
