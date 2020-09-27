import 'package:get/get.dart';
import 'package:getxdarktheme/controllers/home_controller.dart';
import 'package:getxdarktheme/controllers/splash_controller.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
