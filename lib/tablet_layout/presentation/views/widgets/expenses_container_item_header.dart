import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uipractice/tablet_layout/data/models/expenses_model.dart';



class ExpensesContainerItemHeader extends StatelessWidget {
  const ExpensesContainerItemHeader({
    super.key,
    required this.expensesModel,
    required this.isActive,
  });
 final ExpensesModel expensesModel;
 final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        CircleAvatar(
          backgroundColor:isActive?Colors.white.withOpacity(0.2): const Color(0xFFAAAAAA).withOpacity(.1),
            child: Image.asset(expensesModel.image,
              color:isActive?Colors.white: const Color(0xFF4EB7F2),)),

         Icon(Icons.arrow_forward_ios,
          color:isActive?Colors.white: const Color(0xFF064061),)
      ],
    );

  }
}