import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uipractice/core/utilis/app_images.dart';
import 'package:uipractice/custom_container.dart';
import 'package:uipractice/tablet_layout/views/widgets/drop_down_menue.dart';

import '../../../core/utilis/styles.dart';
import '../../data/models/expenses_model.dart';
import 'expenses_container.dart';

class AllExpensesSection extends StatefulWidget {
  const AllExpensesSection({
    super.key,
  });
  @override
  State<AllExpensesSection> createState() => _AllExpensesSectionState();
}

class _AllExpensesSectionState extends State<AllExpensesSection> {

  int activeIndex=0;

  final List<ExpensesModel> expenses=const [
   ExpensesModel(image: AppImages.balance,
      title: 'Balance',
      date: 'April 2024',
      money: r'$20,226'),
   ExpensesModel(image: AppImages.incom,
      title: 'Income',
      date: 'April 2024',
      money: r'$5,226'),
   ExpensesModel(image: AppImages.expenses,
      title: 'Expenses',
      date: 'April 2024',
      money: r'$1,786')
  ];

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 350,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        color: Colors.white
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
             Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('All Expenses',style: Styles.semiBold20,),

                  DropDownMenue(
                    value1: 'Monthly',
                    value2: 'Yearly',
                    value: 'Monthly',)
                ],
              ),
            ),

           Expanded(
             flex: 3,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children:
                 expenses.asMap().entries.map((e) {
                   int index=e.key;
                   var item=e.value;
                   return GestureDetector(
                       onTap: () {
                         if(activeIndex!= index) {
                           activeIndex = index;
                           setState(() {});
                         }},
                       child: Expanded(
                         child: ExpensesContainer(
                             expensesModel: item,
                             index: index,
                             isActive: activeIndex == index?true:false),
                       ));},).toList(),
                     ),),],),

        ),
      );
  }
}

