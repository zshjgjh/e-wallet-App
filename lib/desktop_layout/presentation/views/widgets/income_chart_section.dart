import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import 'package:uipractice/core/utilis/app_images.dart';
import 'package:uipractice/desktop_layout/presentation/views/widgets/income_chart_list_view.dart';
import 'package:uipractice/tablet_layout/presentation/views/widgets/drop_down_menue.dart';

import '../../../../core/utilis/styles.dart';
class IncomeChart extends StatelessWidget {
  const IncomeChart({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Income', style: Styles.semiBold20,),
              DropDownMenue(value1: 'Monthly', value2: 'Yearly', value: 'Monthly')
            ],
          ),
          Row(
            children: [
              Image.asset(AppImages.incomChart),
              const Expanded(
                  child: IncomeChartListView()
              )

            ],
          )
        ],
      ),
    );
  }
}