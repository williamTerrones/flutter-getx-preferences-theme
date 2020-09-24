import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:getxdarktheme/controllers/home_controller.dart';
import 'package:getxdarktheme/global/controllers/theme_controller.dart';

class HomePage extends StatelessWidget {
  final themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => Scaffold(
          appBar: AppBar(
            title: Text("Preferencias tema"),
          ),
          body: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  onPressed: themeController.asignarTemaClaro,
                  color: Colors.white,
                  child: Text("Tema claro"),
                ),
                RaisedButton(
                  onPressed: themeController.asignarTemaOscuro,
                  color: Colors.black,
                  child: Text(
                    "Tema oscuro",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text("Tema personalizado"),
                )
              ],
            ),
          )),
    );
  }
}
