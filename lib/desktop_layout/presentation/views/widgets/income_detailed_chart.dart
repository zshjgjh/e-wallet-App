import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../core/utilis/styles.dart';

class IncomeDetailedChart extends StatefulWidget {
  const IncomeDetailedChart({
    super.key,

  });

  @override
  State<IncomeDetailedChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeDetailedChart> {
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
                  radius: activeIndex==0?40:30,
                  value: 40,
                  color:const Color(0xFF208CC8) ,
                  title:activeIndex==0?'Design Service':'40%',
                titleStyle: Styles.medium16(context).copyWith(color: activeIndex==0?null:Colors.white),
                titlePositionPercentageOffset: activeIndex==0?1.5:null
              ),
              PieChartSectionData(
                  radius: activeIndex==1?40:30,
                  value: 25,
                  color:const Color(0xFF4EB7F2) ,
                  title:activeIndex==1?'Design Product':'25%',
                titleStyle: Styles.medium16(context).copyWith(color: activeIndex==1?null:Colors.white),
                  titlePositionPercentageOffset: activeIndex==1?1.5:null,
              ),
              PieChartSectionData(
                  radius: activeIndex==2?40:30,
                  value: 20,
                  color:const Color(0xFF064061) ,
                  title: activeIndex==2?'Product Royalty':'20%',
                  titleStyle: Styles.medium16(context).copyWith(color: activeIndex==2?null:Colors.white),
                  titlePositionPercentageOffset: activeIndex==2?1.5:null
              ),
              PieChartSectionData(
                  radius: activeIndex==3?40:30,
                  value: 22,
                  color:const Color(0xFFE2DECD) ,
                  title: activeIndex==3?'Other':'22%',
                  titleStyle: Styles.medium16(context).copyWith(color: activeIndex==3?null:Colors.white),
                  titlePositionPercentageOffset: activeIndex==3?1.5:null
              ),

            ]

        ));
  }
}