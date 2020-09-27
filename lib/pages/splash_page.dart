import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:getxdarktheme/controllers/splash_controller.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (_) => Scaffold(
        body: (Container(
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: CircularProgressIndicator(),
          ),
        )),
      ),
    );
  }
}
