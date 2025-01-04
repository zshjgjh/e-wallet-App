import 'package:flutter/material.dart';

import '../../../../core/utilis/app_images.dart';
import '../../../data/models/expenses_model.dart';
import 'expenses_container.dart';

class ThreeExpensesContainers extends StatefulWidget {
  const ThreeExpensesContainers({
    super.key,
  });

  @override
  State<ThreeExpensesContainers> createState() => _ThreeExpensesContainersState();
}

class _ThreeExpensesContainersState extends State<ThreeExpensesContainers> {
  
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
    return Expanded(
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
      ),
    );

  }
}