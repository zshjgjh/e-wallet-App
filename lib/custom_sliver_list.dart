import 'package:flutter/material.dart';

class CustomSliverList extends StatelessWidget {
  const CustomSliverList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildBuilderDelegate((context, index) {
      return Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          height: 40,
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.9),
              borderRadius: BorderRadius.circular(8)
          ),
        ),
      );
    },
        childCount: 40),);
  }
}
