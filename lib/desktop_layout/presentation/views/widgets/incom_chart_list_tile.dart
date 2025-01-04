import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:uipractice/core/utilis/styles.dart';
import 'package:uipractice/desktop_layout/presentation/data/chart_income_model.dart';

class IncomeChartListTile extends StatelessWidget {
  const IncomeChartListTile({
    super.key, required this.chartIncomeModel,

  });

  final ChartIncomeModel chartIncomeModel;

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.of(context).size.width.toString());
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        height: 12,
        width: 12,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(90),
            color: chartIncomeModel.color
        ),
      ),
      title: FittedBox(
        alignment: Alignment.topLeft,
        fit: BoxFit.scaleDown,
          child: Text(chartIncomeModel.title,style: Styles.medium16(context))),
      trailing: Text(chartIncomeModel.percent,style: Styles.medium16(context).copyWith(color: const Color(0xFF4EB7F2)),),
    );
  }
}