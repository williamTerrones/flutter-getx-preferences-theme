import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';
import 'package:getxdarktheme/bindings/home_binding.dart';
import 'package:getxdarktheme/bindings/splash_binding.dart';
import 'package:getxdarktheme/global/controllers/theme_controller.dart';
import 'package:getxdarktheme/pages/home_page.dart';
import 'package:getxdarktheme/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(ThemeController());
    return GetMaterialApp(
      title: 'Preferencias',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashPage(),
      initialBinding: SplashBinding(),
    );
  }
}
