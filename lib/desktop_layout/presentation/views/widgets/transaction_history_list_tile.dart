import 'package:flutter/material.dart';
import 'package:uipractice/desktop_layout/presentation/data/transaction_history_model.dart';

import '../../../../core/utilis/styles.dart';

class TransactionHistoryListTile extends StatelessWidget {
  const TransactionHistoryListTile({
    super.key,
    required this.transactionHistoryModel,

  });
 final TransactionHistoryModel transactionHistoryModel;
  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 0.1,
      child: ListTile(
          title: Text(transactionHistoryModel.title,style: Styles.semiBold16(context),),
          trailing: Text(transactionHistoryModel.amount,
            style: Styles.semiBold20(context).
            copyWith(color:transactionHistoryModel.isWithdrawl!?const Color(0xFFF3735E):const Color(0xFF7DD97B)),),
          subtitle: Text(transactionHistoryModel.date,style: Styles.regular14(context),),
      ),
    );
  }
}