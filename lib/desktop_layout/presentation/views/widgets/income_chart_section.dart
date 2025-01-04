import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uipractice/core/utilis/app_images.dart';
import 'package:uipractice/desktop_layout/presentation/views/widgets/income_chart_list_view.dart';
import 'package:uipractice/desktop_layout/presentation/views/widgets/income_detailed_chart.dart';
import 'package:uipractice/tablet_layout/presentation/views/widgets/drop_down_menue.dart';

import '../../../../core/utilis/styles.dart';
import 'income_chart.dart';
class IncomeChartSection extends StatelessWidget {
  const IncomeChartSection({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Text('Income', style: Styles.semiBold20(context),),
            DropDownMenue(value1: 'Monthly', value2: 'Yearly', value: 'Monthly')
          ],
        ),
        width>=1200 && width<=1219?const Row(
          children: [
            Expanded(
                child: AspectRatio(aspectRatio:3/2 ,
                child: IncomeDetailedChart())),
          ],
        ): const Row(
          children: [
            Expanded(
                child: AspectRatio(
                    aspectRatio: 3/2,
                    child: IncomeChart())
            ),
            Expanded(
                child: IncomeChartListView()
            )

          ],
        )
      ],
    );
  }
}