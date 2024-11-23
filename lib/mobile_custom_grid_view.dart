import 'package:flutter/material.dart';

import 'custom_container.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid(delegate:SliverChildBuilderDelegate((context,index){
      return const Padding(
        padding: EdgeInsets.all(4.0),
        child: CustomContainer(),
      );
    } ,
        childCount: 4
    ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2
        ));
  }
}

