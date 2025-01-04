import 'package:flutter/material.dart';

import '../../../core/utilis/app_images.dart';
import '../../models/drawer_item_model.dart';
import 'drawer_item_list_tile.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });


  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {

  static const List<DrawerItemModel> items=[
    DrawerItemModel(title: 'Dashboard', leadingImage: AppImages.dashboard),
    DrawerItemModel(title: 'My Transaction', leadingImage: AppImages.transaction),
    DrawerItemModel(title: 'Statistics', leadingImage: AppImages.statstics),
    DrawerItemModel(title: 'Wallet Account', leadingImage: AppImages.wallet),
    DrawerItemModel(title: 'My Investment', leadingImage: AppImages.investment)
  ];
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {

    return SliverList(delegate:SliverChildBuilderDelegate(
      childCount: items.length,
          (context,index){
          return GestureDetector(
            onTap: (){
             if(currentIndex!=index ){
               currentIndex=index;
               setState(() {});
             };},
              child: DrawerItemListTile(drawerItemModel: items[index],
                isActive: currentIndex==index?true:false,));
          },),);
}
}