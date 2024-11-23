import 'package:flutter/material.dart';
import 'package:uipractice/tablet_layout.dart';

import 'desktop_layout.dart';
import 'mobile_layout.dart';

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
      if(constrains.maxWidth<600){
        return  mobileLayout(context);
      }else if(constrains.maxWidth<900){
        return  tabletLayout(context);
      }
      else{
        return  desktopLayout(context);
      }
    },);
  }
}