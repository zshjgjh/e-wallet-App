 import 'package:go_router/go_router.dart';
import 'package:uipractice/core/utilis/app_images.dart';
import 'package:uipractice/drawer/data/models/name_model.dart';

import '../../home_view.dart';
import '../../tablet_layout/data/models/expenses_model.dart';
 abstract class AppRouters {


   static const kHomeView = '/homeview';
   static const kBookDetails = '/bookdetailsview';
   static const kSearchView = '/searchview';
   static final router = GoRouter(
     routes: [
       GoRoute(
         path: '/',
         builder: (context, state) =>   const HomeView(),
       ),
     ],);
 }