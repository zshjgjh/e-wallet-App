import 'package:flutter/material.dart';

import 'mobile_custom_grid_view.dart';
import 'custom_sliver_list.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(height: 8,),
        ),
        CustomGridView(),

        SliverToBoxAdapter(
          child: SizedBox(height: 8,),
        ),

        CustomSliverList()
      ],
    );
  }
}