import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uipractice/custom_container.dart';
import 'package:uipractice/custom_drawer.dart';
import 'package:uipractice/desktop_right_containers.dart';
import 'package:uipractice/tablet_layout.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              flex:1,
                child: CustomDrawer()),
            Expanded(
              flex: 4,
                child: Padding(
                  padding: EdgeInsets.only(left:8.0,right: 8),
                  child: TabletLayout(),
                )),
           Expanded(
             flex: 1,
             child:DesktopRightContainers(),)

          ],
        ),
      ),
    );
  }
}