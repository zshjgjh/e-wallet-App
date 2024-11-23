import 'package:flutter/material.dart';

import 'custom_container.dart';

class DesktopRightContainers extends StatelessWidget {
  const DesktopRightContainers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          flex: 2,
          child: AspectRatio(aspectRatio: 3 / 2,
              child: CustomContainer()),
        ),
        SizedBox(height: 10,),
        Expanded(
          flex: 1,
          child: AspectRatio(aspectRatio: 3 / 2,
              child: CustomContainer()),
        )
      ],
    );
  }
}