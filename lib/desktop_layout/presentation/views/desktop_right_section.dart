import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uipractice/core/utilis/app_images.dart';
import 'package:uipractice/desktop_layout/presentation/views/widgets/my_card.dart';

import '../../../../core/utilis/styles.dart';
import '../../../../custom_container.dart';
import 'my_card_section.dart';

class DesktopRightContainers extends StatelessWidget {
  const DesktopRightContainers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          height: 500,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                  Padding(
                   padding: EdgeInsets.only(top: 20.0,left: 8),
                   child: MyCardSection()
                 ),

                SizedBox(height: 10,),

              ],
            ),
          ),
        ),
      ],
    );
  }
}