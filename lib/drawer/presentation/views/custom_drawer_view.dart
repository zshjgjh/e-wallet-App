import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uipractice/core/utilis/app_images.dart';
import 'package:uipractice/drawer/data/models/drawer_item_model.dart';

import 'package:uipractice/drawer/presentation/views/widgets/drawer_item_list_tile.dart';
import 'package:uipractice/drawer/presentation/views/widgets/drawer_items_list_view.dart';
import 'package:uipractice/drawer/presentation/views/widgets/name_list_tile.dart';


import '../../data/models/name_model.dart';


class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });
  final NameModel nameModel= const NameModel(name: 'Zuhor Saeed',
      email:'zuhorsaeed1993@gmail.com' ,
      avatar: AppImages.logo);
  @override
  Widget build(BuildContext context) {
    return    Drawer(
      surfaceTintColor: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(

            child: Padding(
               padding: const EdgeInsets.all(4.0),
               child: NameListTile(nameModel: nameModel),
             ),
          ),

          const SliverToBoxAdapter(
              child: SizedBox(height: 20,)),

          const DrawerItemsListView(),//sliverlist

          const SliverFillRemaining(
            hasScrollBody: false,

            child: Column(
              children: [

                Expanded(
                    child: SizedBox(height: 10,)
                ),

                DrawerItemListTile(
                  drawerItemModel: DrawerItemModel(title: 'Setting System',
                    leadingImage: AppImages.setting),
                  isActive: false,),
                
                
                DrawerItemListTile(
                  drawerItemModel: DrawerItemModel(title: 'Logout',
                    leadingImage: AppImages.logout),
                  isActive: false,),
                
                SizedBox(height: 48,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}