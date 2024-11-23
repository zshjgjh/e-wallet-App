import 'package:flutter/material.dart';
import 'package:uipractice/custom_container.dart';

class TabletListView extends StatelessWidget {
  const TabletListView({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height*0.35,
      child: ListView.builder(
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return  const Padding(
              padding: EdgeInsets.only(left:4.0),
              child: AspectRatio(
                aspectRatio: 1,
                child: CustomContainer(),
              ),
            );
          }),
    );
  }
}