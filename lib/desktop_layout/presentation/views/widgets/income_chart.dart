import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:uipractice/desktop_layout/presentation/views/widgets/income_detailed_chart.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({
    super.key,

  });

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  @override
  Widget build(BuildContext context) {
    int activeIndex=-1;

    return PieChart(
        PieChartData(
          pieTouchData: PieTouchData(
            enabled: true,
            touchCallback: (p0,pieTouchResponse){
             activeIndex= pieTouchResponse?.touchedSection?.touchedSectionIndex??-1;
             setState(() {

             });
            }

          ),
          sectionsSpace: 0,
          sections:[
            PieChartSectionData(
              radius: activeIndex==0?30:20,
              value: 40,
              color:const Color(0xFF208CC8) ,
              showTitle: false
            ),
            PieChartSectionData(
                radius: activeIndex==1?30:20,
                value: 25,
                color:const Color(0xFF4EB7F2) ,
                showTitle: false
            ),
            PieChartSectionData(
                radius: activeIndex==2?30:20,
                value: 20,
                color:const Color(0xFF064061) ,
                showTitle: false
            ),
            PieChartSectionData(
                radius: activeIndex==3?30:20,
                value: 22,
                color:const Color(0xFFE2DECD) ,
                showTitle: false
            ),

          ]

    ));
  }
}