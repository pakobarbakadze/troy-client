import 'package:flutter/material.dart';
import 'package:troy_client/features/shared/appstyle.dart';

class Tabs extends StatelessWidget {
  const Tabs({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/top_image.png'),
            fit: BoxFit.fill,
          ),
          color: Colors.black),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 45, 16, 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Athletic Shoes",
              style: appstyleWithHt(42, Colors.white, FontWeight.bold, 1.5),
            ),
            Text(
              "Collection",
              style: appstyleWithHt(42, Colors.white, FontWeight.bold, 1.2),
            ),
            TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.transparent,
              controller: tabController,
              isScrollable: true,
              labelColor: Colors.white,
              labelStyle: appstyle(24, Colors.white, FontWeight.bold),
              unselectedLabelColor: Colors.grey.withOpacity(0.3),
              tabs: const [
                Tab(text: "Men Shoes"),
                Tab(text: "Women Shoes"),
                Tab(text: "Kid Shoes"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
