import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uipractice/tablet_layout/views/widgets/send_money_section.dart';
import 'package:uipractice/tablet_layout/views/widgets/all_expenses_section.dart';

import '../../mobile_custom_grid_view.dart';
import '../../custom_sliver_list.dart';
import '../data/models/expenses_model.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({
    super.key,

  });

  @override
  Widget build(BuildContext context) {

    return  const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: AllExpensesSection()
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 8,),
        ),
      SliverToBoxAdapter(child: SendMoneySection())
      ],
    );
  }
}

