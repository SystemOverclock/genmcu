import 'package:get/get.dart';

class AppNavigation {
  static void goToNamed(String namedRoute) {
    Get.toNamed(namedRoute);
  }

  static void getOffAll(String namedRoute) {
    Get.offAllNamed(namedRoute);
  }

  static void getOffLast(String namedRoute) {
    Get.offNamed(namedRoute);
  }

  static void goBack() {
    Get.back();
  }
}
