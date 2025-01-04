import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uipractice/tablet_layout/views/widgets/expenses_container_item_header.dart';
import 'package:uipractice/tablet_layout/data/models/expenses_model.dart';

import '../../../core/utilis/styles.dart';

class ExpensesContainer extends StatelessWidget {
  const ExpensesContainer({
    super.key,
    required this.expensesModel,
    required this.index,
    required this.isActive,
  });
  final ExpensesModel expensesModel;
  final int index;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: BoxDecoration(
                color: isActive ? const Color(0xFF4EB7F2) : Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFFAAAAAA), width: 1)),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 36.0, right: 20, left: 20, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ExpensesContainerItemHeader(
                    expensesModel: expensesModel,
                    isActive: isActive ,
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  Text(
                    expensesModel.title,
                    style: isActive
                        ? Styles.semiBold16.copyWith(color: Colors.white)
                        : Styles.semiBold16,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    expensesModel.date,
                    style: isActive
                        ? Styles.regular14.copyWith(color: Colors.white)
                        : Styles.regular14,
                  ),
                  const Expanded(
                      child: SizedBox(
                    height: 16,
                  )),
                  Text(
                    expensesModel.money,
                    style: isActive
                        ? Styles.semiBold24.copyWith(color: Colors.white)
                        : Styles.semiBold24,
                  ),

                ],
              ),
            ),
          );
  }
}
