import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  void asignarTemaClaro() {
    Get.changeTheme(ThemeData.light());
  }

  void asignarTemaOscuro() {
    Get.changeTheme(ThemeData.dark());
  }
}
