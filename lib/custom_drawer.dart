import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  const Drawer(
      child: Column(
        children: [
          DrawerHeader(child: Icon(FontAwesomeIcons.solidHeart)),
          CustomListTile(title: Text('DASH BOARD'),
            leading: Icon(Icons.home_filled),),
          CustomListTile(title: Text('SETTING'),
            leading: Icon(Icons.settings),),
          CustomListTile(title: Text('ABOUT'),
            leading: Icon(FontAwesomeIcons.circleExclamation),),
          CustomListTile(title: Text('LOG OUT'),
            leading: Icon(Icons.logout),)
        ],
      ),
    );
  }
}