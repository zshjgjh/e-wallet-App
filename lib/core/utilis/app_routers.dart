 import 'package:go_router/go_router.dart';

import 'home_view.dart';
 abstract class AppRouters {
   static const kHomeView = '/homeview';
   static const kBookDetails = '/bookdetailsview';
   static const kSearchView = '/searchview';
   static final router = GoRouter(
     routes: [
       GoRoute(
         path: '/',
         builder: (context, state) => const HomeView(),
       ),
     ],);
 }