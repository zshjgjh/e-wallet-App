import 'package:flutter/material.dart';
import 'package:uipractice/core/utilis/size_config.dart';


class AdaptiveLayoutBuilder extends StatelessWidget {
  const AdaptiveLayoutBuilder({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });

final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constrains){
      if(constrains.maxWidth<SizeConfig.mobileBP){
        return  mobileLayout(context);
      }else if(constrains.maxWidth<SizeConfig.tabletBP){
        return  tabletLayout(context);
      }
      else{
        return  desktopLayout(context);
      }
    },);
  }
}