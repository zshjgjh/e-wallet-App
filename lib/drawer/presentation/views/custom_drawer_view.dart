import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uipractice/core/utilis/app_images.dart';
import 'package:uipractice/drawer/models/drawer_item_model.dart';
import 'package:uipractice/drawer/models/name_model.dart';
import 'package:uipractice/drawer/views/widgets/drawer_item_list_tile.dart';
import 'package:uipractice/drawer/views/widgets/drawer_items_list_view.dart';
import 'package:uipractice/drawer/views/widgets/name_section.dart';


class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key, required this.nameModel,
  });
  final NameModel nameModel;
  @override
  Widget build(BuildContext context) {
    return   Drawer(
      surfaceTintColor: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(

            child: Padding(
               padding: const EdgeInsets.all(12.0),
               child: NameSection(nameModel: nameModel,),
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