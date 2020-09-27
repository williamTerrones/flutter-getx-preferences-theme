import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdarktheme/pages/home_page.dart';
import 'package:getxdarktheme/services/theme_preferences_service.dart';

class SplashController extends GetxController {
  final ThemePreferencesservice _themePreferencesservice =
      new ThemePreferencesservice();

  @override
  void onReady() async {
    // TODO: implement onReady
    super.onReady();

    final String tema = await _themePreferencesservice.obtenerTema();

    if (tema != null) {
      if (tema == 'dark') {
        Get.changeTheme(ThemeData.dark());
      }
    }

    await Future.delayed(Duration(seconds: 2));
    Get.off(HomePage());
  }
}
