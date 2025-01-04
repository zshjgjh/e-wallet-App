import 'package:flutter/material.dart';

import '../../../core/utilis/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.style,
    required this.backgroundColor,
    this.onPressed,


  });
 final  void Function()? onPressed;
  final String text;
  final TextStyle style;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 0,
        backgroundColor: backgroundColor,
        fixedSize:const Size(266, 62)

      ),
      child: Text(text,
          style: style ),
    );
  }
}