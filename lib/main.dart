import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:uipractice/core/utilis/app_routers.dart';

void main() {
  runApp(
      DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(),
  )// Wrap your app
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(

      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouters.router,

    );
  }
}
