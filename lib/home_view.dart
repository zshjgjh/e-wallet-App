import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uipractice/core/utilis/size_config.dart';
import 'package:uipractice/drawer/data/models/name_model.dart';
import 'package:uipractice/tablet_layout/data/models/expenses_model.dart';


import 'drawer/presentation/views/custom_drawer_view.dart';
import 'home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key
  });



  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scaffoldKey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.1),
      key: scaffoldKey,
      drawer:  const CustomDrawer(),
      appBar:MediaQuery.of(context).size.width<=SizeConfig.mobileBP?AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: (){
            scaffoldKey.currentState!.openDrawer();
            },
              icon:const Icon(Icons.menu,color: Colors.white,), ),
      ):null,
      body:  const HomeViewBody()
    );
  }
}