import 'package:flutter/material.dart';


import 'custom_text_field.dart';

class MoreDetailsSection extends StatelessWidget {
  const MoreDetailsSection({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(child: CustomTextField(
              labelText: 'Country',
              hintText: 'Type Country',)),
            SizedBox(width: 10,),
            Expanded(child: CustomTextField(
              labelText: 'City',
              hintText: 'Type City',)),
          ],
        ),
        SizedBox(height: 12,),
        Row(
          children: [
            Expanded(child: CustomTextField(
              labelText: 'Street Address',
              hintText: 'Type Street Address',)),
            SizedBox(width: 10,),
            Expanded(child: CustomTextField(
              labelText: 'Postal Code',
              hintText: 'Type Postal Code ',)),
          ],
        ),
      ],
    );
  }
}