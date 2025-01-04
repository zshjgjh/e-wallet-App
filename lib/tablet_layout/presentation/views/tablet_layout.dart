import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uipractice/desktop_layout/presentation/views/desktop_right_section.dart';
import 'package:uipractice/drawer/presentation/views/custom_drawer_view.dart';
import 'package:uipractice/tablet_layout/presentation/views/widgets/send_money_section&latest_section.dart';
import 'package:uipractice/tablet_layout/presentation/views/widgets/all_expenses_section.dart';



class TabletLayout extends StatelessWidget {
  const TabletLayout({
    super.key,

  });

  @override
  Widget build(BuildContext context) {

    return  const Row(
      children: [
        Expanded(
          flex:1,
            child: CustomDrawer()),
        SizedBox(width: 10,),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Column(
              children: [
                AllExpensesSection(),
                SizedBox(height: 10,),
              SendMoneyandLatestTransactionSection(),
                SizedBox(height: 10,),
                DesktopRightSection()
              ],
            ),

          ),
        ),
        SizedBox(width: 10,),
      ],
    );
  }
}

