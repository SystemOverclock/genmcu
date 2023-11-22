import 'package:get/get.dart';

class AppScreenSize {
  static late double screenHeight;
  static late double screenWidth;

  static void getScreenSize() {
    screenHeight = Get.size.height;
    screenWidth = Get.size.width;
  }
}
