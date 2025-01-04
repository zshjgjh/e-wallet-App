import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uipractice/core/utilis/app_images.dart';
import 'package:uipractice/desktop_layout/presentation/data/transaction_history_model.dart';
import 'package:uipractice/desktop_layout/presentation/views/widgets/income_chart_section.dart';
import 'package:uipractice/desktop_layout/presentation/views/widgets/my_card.dart';
import 'package:uipractice/desktop_layout/presentation/views/widgets/transaction_history_list_tile.dart';
import 'package:uipractice/desktop_layout/presentation/views/widgets/transaction_history_section.dart';

import '../../../core/utilis/styles.dart';

import 'widgets/my_card_section.dart';

class DesktopRightSection extends StatelessWidget {
  const DesktopRightSection({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                  Padding(
                   padding: EdgeInsets.only(top: 20.0,left: 8),
                   child: MyCardSection()
                 ),
                SizedBox(height: 10,),

                Divider(thickness: 2,color: Color(0xfff1f1f1),),

                TransactionHistorySection(),

                SizedBox(height: 10,),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10,),
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: IncomeChartSection(),
            )
        )
      ],
    );
  }
}