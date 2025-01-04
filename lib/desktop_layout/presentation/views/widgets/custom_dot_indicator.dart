import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    required this.isActive,
  });
 final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: const Duration(milliseconds:300 ),
      child: Container(
        height:8 ,
        width:isActive? 32:8 ,
        decoration: BoxDecoration(
            color:isActive?const Color(0xFF4EB7F2):const Color(0xFFE8E8E8),
          borderRadius: BorderRadius.circular(12)
        ),
      ),
    );
  }
}