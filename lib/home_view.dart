import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uipractice/custom_drawer.dart';

import 'home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scaffoldKey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      appBar:MediaQuery.of(context).size.width<900?AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: (){
            scaffoldKey.currentState!.openDrawer();
            },
              icon:const Icon(Icons.menu,color: Colors.white,), ),
      ):null,
      body:const HomeViewBody()
    );
  }
}