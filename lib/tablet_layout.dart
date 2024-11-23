import 'package:flutter/material.dart';
import 'package:uipractice/tablet_list_view.dart';

import 'mobile_custom_grid_view.dart';
import 'custom_sliver_list.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;
    return  CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: TabletListView(height: height)
        ),
        const SliverToBoxAdapter(
          child: SizedBox(height: 8,),
        ),
        const CustomSliverList()
      ],
    );
  }
}

