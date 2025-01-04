
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.labelText,
    required this.hintText,

  });
  final String labelText;
  final String  hintText;

  @override
  Widget build(BuildContext context) {
    return
       TextField(
        expands: false,
        decoration: InputDecoration(
            labelText: labelText,
            hintText: hintText,
            enabled: true,
            fillColor: const Color(0xFFFAFAFA),
            filled: true,
            contentPadding: const EdgeInsets.symmetric(vertical: 2,horizontal: 2),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFFAFAFA),
                ),),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFF4EB7F2),
                    style: BorderStyle.solid
                )
            )

        )
      );

  }
}


