import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utilis/styles.dart';

class TransactionHistoryTitle extends StatelessWidget {
  const TransactionHistoryTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Transaction History', style: Styles.semiBold20(context),),
            GestureDetector(
              child: Text('See all',
                style: Styles.medium16(context).copyWith(color: const Color(0xFF4EB7F2)),),
            ),

          ],),
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('13 April 2022',
              style: Styles.medium16(context).copyWith(color: const Color(0xFFAAAAAA)),),

          ],),
      ],
    );
  }
}