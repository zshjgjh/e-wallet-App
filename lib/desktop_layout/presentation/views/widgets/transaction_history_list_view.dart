import 'package:flutter/material.dart';
import 'package:uipractice/desktop_layout/presentation/views/widgets/transaction_history_list_tile.dart';

import '../../data/transaction_history_model.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({
    super.key,
  });

  final List<TransactionHistoryModel> transactionHistory = const[
    TransactionHistoryModel(title: 'Cash Withdrawal',
        amount: r'$20,129', date: '13 Apr, 2022 ',isWithdrawl: true),
    TransactionHistoryModel(title: 'Landing Page project',
        amount: r'$2,000', date: '13 Apr, 2022 at 3:30 PM '),
    TransactionHistoryModel(title: 'Juni Mobile App project',
        amount: r'$20,129', date: '13 Apr, 2022 at 3:30 PM'),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
        itemCount: transactionHistory.length,
        itemBuilder: (context, index) {
          return TransactionHistoryListTile(
              transactionHistoryModel: transactionHistory[index]);
        });
  }
}