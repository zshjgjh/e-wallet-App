import 'package:flutter/material.dart';
import 'package:uipractice/drawer/models/drawer_item_model.dart';

import '../../../core/utilis/functions.dart';
import '../../../core/utilis/styles.dart';

class DrawerItemListTile extends StatelessWidget {
  const DrawerItemListTile({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
  });

  final DrawerItemModel drawerItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(drawerItemModel.leadingImage),
      title: FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.scaleDown,
        child: Text(drawerItemModel.title,
          style:getTextStyle(isActive: isActive)),
      ),
      trailing:isActive?Container(
        color: Colors.grey,
        width: 3.48,
      ) :null

    );
  }
}

