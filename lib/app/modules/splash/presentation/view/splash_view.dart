import 'package:flutter/material.dart';
import 'package:genmcu/app/core/utils/utils.dart';
import 'package:get/get.dart';
import 'package:genmcu/app/modules/splash/presentation/controller/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Image.asset(
        "assets/images/marvel-logo.gif",
        fit: BoxFit.fitHeight,
        height: AppScreenSize.screenHeight,
      ),
    );
  }
}
