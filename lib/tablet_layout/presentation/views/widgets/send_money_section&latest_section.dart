import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uipractice/tablet_layout/presentation/views/widgets/send_money-section_header.dart';

import 'package:uipractice/tablet_layout/presentation/views/widgets/latest_transaction.dart';

import 'package:uipractice/tablet_layout/presentation/views/widgets/send_money_form.dart';



class SendMoneySection extends StatelessWidget {
  const SendMoneySection({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white
      ),
      child:  const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           SendMoneySectionHeader(),

            SizedBox(height: 10,),

            LatestTransaction(),

            SizedBox(height: 20,),


           Divider(
             thickness: 2,
           color: Color(0xFFF1F1F1),),

            SizedBox(height: 20,),

         SendMoneyForm(),

            SizedBox(width: 24,),

          ],
        ),
      ),
    );
  }
}