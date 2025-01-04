import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uipractice/desktop_layout/presentation/data/my_card_model.dart';
import 'package:uipractice/desktop_layout/presentation/views/widgets/my_card.dart';
import 'package:uipractice/tablet_layout/data/models/expenses_model.dart';
import 'package:uipractice/tablet_layout/presentation/views/widgets/expenses_container.dart';

import '../../../../core/utilis/app_images.dart';
import '../../../../desktop_layout/presentation/views/widgets/dot_indicator.dart';

class ExpensesPageView extends StatefulWidget {
  const ExpensesPageView({
    super.key,

  });

  @override
  State<ExpensesPageView> createState() => _ExpensesPageViewState();
}

class _ExpensesPageViewState extends State<ExpensesPageView> {
  late  PageController pageController;
  int currentIndex=0;
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
  void initState(){
    super.initState();
    pageController=PageController();
    pageController.addListener((){
      currentIndex=pageController.page!.round();
      setState(() {

      });
    });

  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 2.0,left: 2,bottom: 8),
      child: Column(
        children: [
          ExpandablePageView(
              controller: pageController,
              scrollDirection: Axis.horizontal,
              children: List.generate(3, (index) =>  ExpensesContainer(
                expensesModel:expenses[index],
                index: index,
                 isActive:currentIndex==index? true:false ,))),

          const SizedBox(height: 10,),

          DotIndicator(currentIndex: currentIndex,),
        ],
      ),
    );
  }
}