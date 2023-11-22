import 'package:genmcu/app/core/utils/utils.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  void startApp() {
    Future.delayed(
        const Duration(seconds: 3), () => AppNavigation.getOffAll("/home"));
  }

  @override
  void onInit() {
    startApp();
    super.onInit();
  }
}
