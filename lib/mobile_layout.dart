import 'package:flutter/material.dart';
import 'package:uipractice/tablet_layout/presentation/views/widgets/all_expenses_section.dart';
import 'package:uipractice/tablet_layout/presentation/views/widgets/send_money_section&latest_section.dart';

import 'desktop_layout/presentation/views/desktop_right_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(8.0),
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
    );
  }
}