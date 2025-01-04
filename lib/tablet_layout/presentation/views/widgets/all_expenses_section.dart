import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uipractice/core/utilis/app_images.dart';
import 'package:uipractice/core/utilis/size_config.dart';
import 'package:uipractice/tablet_layout/presentation/views/widgets/three_expenses_containers.dart';

import 'package:uipractice/tablet_layout/presentation/views/widgets/drop_down_menue.dart';
import 'package:uipractice/tablet_layout/presentation/views/widgets/expenses_page_view.dart';

import '../../../../core/utilis/styles.dart';
import '../../../data/models/expenses_model.dart';
import 'expenses_container.dart';

class AllExpensesSection extends StatelessWidget {
  const AllExpensesSection({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    return   Container(
      height: 360,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        color: Colors.white
      ),
      child:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
             Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('All Expenses',style: Styles.semiBold20(context),),

                  DropDownMenue(
                    value1: 'Monthly',
                    value2: 'Yearly',
                    value: 'Monthly',)
                ],
              ),
            ),

           width<=SizeConfig.mobileBP?const ExpensesPageView():
           const Expanded(
             flex: 3,
               child: ThreeExpensesContainers())
       ],
    ),
      ),
    );
  }
}

