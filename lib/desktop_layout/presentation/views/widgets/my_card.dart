import 'package:flutter/material.dart';
import 'package:uipractice/desktop_layout/presentation/data/my_card_model.dart';

import '../../../../core/utilis/app_images.dart';
import '../../../../core/utilis/size_config.dart';
import '../../../../core/utilis/styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    required this.myCardModel,
  });
final MyCardModel myCardModel;
  @override
  Widget build(BuildContext context) {
    return  AspectRatio(
      aspectRatio: getAspectRatio(context),
      child: Container(
        decoration:  BoxDecoration(
            color: const Color(0xFF4EB7F2),
            image: const DecorationImage(image: AssetImage(AppImages.maskCard)),
            borderRadius: BorderRadius.circular(12)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text('Name Card',
                    style: Styles.regular16(context).copyWith(color:const Color(0xFFFFFFFF) ),)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(myCardModel.name,style: Styles.medium20(context),),
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(myCardModel.image),
                  )
                ],
              ),
              const Expanded(child: SizedBox(height: 16,)),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(myCardModel.num,
                    style: Styles.semiBold24(context).copyWith(color:const Color(0xFFFFFFFF) ),)

                ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(myCardModel.date,
                    style: Styles.regular16(context).copyWith(color:const Color(0xFFFFFFFF) ),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
double getAspectRatio(context) {
  double width = MediaQuery
      .of(context)
      .size
      .width;
  if (width <SizeConfig.mobileBP) {
    return 420 / 150;
  } else if (width <SizeConfig.tabletBP) {
    return 420 /130;
  } else {
    return 420 / 215;
  }
}