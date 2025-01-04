import 'package:flutter/material.dart';

import '../../../../core/utilis/styles.dart';


class SendMoneySectionHeader extends StatelessWidget {
  const SendMoneySectionHeader({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text('Quick Invoices', style: Styles.semiBold20(context),),
        IconButton(
            onPressed: () {},
            icon: CircleAvatar(
                backgroundColor: const Color(0xFFAAAAAA).withOpacity(.1),
                child: const Icon(Icons.add, color: Color(0xFF4EB7F2),)))
      ],
    );
  }
}