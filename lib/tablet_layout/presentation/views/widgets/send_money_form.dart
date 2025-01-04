import 'package:flutter/material.dart';


import '../../../../core/utilis/styles.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';
import 'drop_down_menue.dart';
import 'more_details_section.dart';

class SendMoneyForm extends StatefulWidget {
  const SendMoneyForm({
    super.key,
  });

  @override
  State<SendMoneyForm> createState() => _SendMoneyFormState();
}
List<Widget> fields=[const SizedBox(height: 1,)];

class _SendMoneyFormState extends State<SendMoneyForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Expanded(child: CustomTextField(
              labelText: 'Customer Name',
              hintText: 'Type Name',)),
            SizedBox(width: 10,),
            Expanded(child: CustomTextField(
              labelText: 'Customer Email',
              hintText: 'Type Email',)),
          ],
        ),

        const SizedBox(height: 12,),

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Expanded(child: CustomTextField(
              labelText: 'Amount',
              hintText: 'Enter Amount',)),

            Padding(
              padding: const EdgeInsets.only(left: 64.0),
              child: DropDownMenue(value1: 'USD', value2: 'EUR', value: 'USD'),
            ),
            const Spacer()

          ],
        ),

        const SizedBox(height: 12,),

        fields[0],



        const SizedBox(height: 60,),

        Row(
          children: [
            Expanded(
                child: CustomButton(
                  onPressed: (){
                    addMoreDetails();
                    setState(() {

                    });
                  },
                  text: 'Add More Details',
                  style: Styles.semiBold18(context).copyWith(
                      color: const Color(0xFF4EB7F2)),
                  backgroundColor: Colors.white,)),
            const SizedBox(width: 24,),

             Expanded(
                child: CustomButton(
                  onPressed: (){},
                  text: 'Send Money',
                  style: Styles.semiBold18(context),
                  backgroundColor: const Color(0xFF4EB7F2),)),


          ],),

      ],
    );
  }
  List<Widget> addMoreDetails(){
    fields.clear();
    fields.add(const MoreDetailsSection());
    return fields;
  }
}
