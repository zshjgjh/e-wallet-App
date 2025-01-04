import 'package:flutter/material.dart';
import 'package:uipractice/desktop_layout/presentation/views/widgets/income_chart_section.dart';
import 'package:uipractice/desktop_layout/presentation/views/widgets/transaction_history_list_tile.dart';
import 'package:uipractice/desktop_layout/presentation/views/widgets/transaction_history_list_view.dart';
import 'package:uipractice/desktop_layout/presentation/views/widgets/transaction_history_title.dart';

import '../../data/transaction_history_model.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TransactionHistoryTitle(),
       SizedBox(height: 10,),
       TransactionHistoryListView(),


      ],
    );
  }
}