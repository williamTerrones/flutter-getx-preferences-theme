import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdarktheme/services/theme_preferences_service.dart';

class ThemeController extends GetxController {
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
  }

  void asignarTemaClaro() {
    Get.changeTheme(ThemeData.light());
    _themePreferencesservice.guardarTema('light');
  }

  void asignarTemaOscuro() {
    Get.changeTheme(ThemeData.dark());
    _themePreferencesservice.guardarTema('dark');
  }
}
