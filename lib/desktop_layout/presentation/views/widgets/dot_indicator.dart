import 'package:flutter/material.dart';
import 'package:uipractice/desktop_layout/presentation/views/widgets/custom_dot_indicator.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    required this.currentIndex,

  });

  final int currentIndex;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) =>  Padding(
        padding: const EdgeInsets.only(right: 2.0),
        child: CustomDotIndicator(isActive: index==currentIndex,),
      ))
    );
  }
}