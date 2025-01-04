import 'package:flutter/material.dart';
import 'package:uipractice/desktop_layout/presentation/data/chart_income_model.dart';
import 'package:uipractice/desktop_layout/presentation/views/widgets/incom_chart_list_tile.dart';

class IncomeChartListView extends StatelessWidget {
  const IncomeChartListView({
    super.key,

  });
static const items=[
  ChartIncomeModel(
    color: Color(0xFF208CC8),
    title: 'Design service',
    percent: '40%'),
  ChartIncomeModel(
      color: Color(0xFF4EB7F2),
      title: 'Design product',
      percent: '25%'),
  ChartIncomeModel(
      color: Color(0xFF064061),
      title: 'Product royalti',
      percent: '20%'),
  ChartIncomeModel(
      color: Color(0xFFE2DECD),
      title: 'Other',
      percent: '22%')];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: items.length,
        itemBuilder: (context,index){
          return IncomeChartListTile(chartIncomeModel: items[index]);
    }
    );
        }

}
