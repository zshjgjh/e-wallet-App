import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uipractice/desktop_layout/presentation/views/desktop_layout.dart';
import 'package:uipractice/drawer/data/models/name_model.dart';
import 'package:uipractice/tablet_layout/data/models/expenses_model.dart';
import 'package:uipractice/tablet_layout/presentation/views/tablet_layout.dart';

import 'adaptive_layout_builder.dart';
import 'mobile_layout.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key,
  });



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   AdaptiveLayoutBuilder(
      mobileLayout: (BuildContext context) {return const MobileLayout(); },
      tabletLayout: (BuildContext context) {return  const TabletLayout() ; },
      desktopLayout: (BuildContext context) {return   const DesktopLayout() ; },);
  }
}






