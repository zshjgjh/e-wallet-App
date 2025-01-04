import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uipractice/custom_container.dart';
import 'package:uipractice/drawer/data/models/name_model.dart';

import 'package:uipractice/desktop_layout/presentation/views/widgets/desktop_right_section.dart';
import 'package:uipractice/tablet_layout/data/models/expenses_model.dart';
import 'package:uipractice/tablet_layout/views/tablet_layout.dart';

import '../drawer/presentation/views/custom_drawer_view.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    return  const Expanded(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              flex:2,
                child: CustomDrawer()),
            Expanded(
              flex: 6,
                child: Padding(
                  padding: EdgeInsets.only(left:8.0,right: 8),
                  child: TabletLayout(),
                )),
           Expanded(
             flex: 3,
             child:DesktopRightContainers(),)

          ],
        ),
      ),
    );
  }
}