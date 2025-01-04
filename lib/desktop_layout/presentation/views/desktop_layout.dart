import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:uipractice/drawer/data/models/name_model.dart';

import 'package:uipractice/desktop_layout/presentation/views/desktop_right_section.dart';
import 'package:uipractice/tablet_layout/data/models/expenses_model.dart';
import 'package:uipractice/tablet_layout/presentation/views/tablet_layout.dart';
import 'package:uipractice/tablet_layout/presentation/views/widgets/all_expenses_section.dart';
import 'package:uipractice/tablet_layout/presentation/views/widgets/latest_transaction.dart';
import 'package:uipractice/tablet_layout/presentation/views/widgets/send_money_section&latest_section.dart';

import '../../../drawer/presentation/views/custom_drawer_view.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
              flex:1,
              child: CustomDrawer()),

          Expanded(
            flex: 4,
            child: CustomScrollView(
              scrollDirection: Axis.vertical,
              slivers:[
                SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(left:8.0,right: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex:4,
                          child: Column(
                            children: [
                              AllExpensesSection(),
                              SizedBox(height: 10,),
                              SendMoneyandLatestTransactionSection()
                            ],
                          )),
                      SizedBox(width: 8,),
                      Expanded(
                        flex: 2,
                          child: DesktopRightSection())
                    ],
                  ),
                )),
              ],
                      ),
          ),
        ],
      ),

      );

  }
}