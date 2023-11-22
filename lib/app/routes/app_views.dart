import 'package:genmcu/app/modules/home/bindings/home_bindings.dart';
import 'package:genmcu/app/modules/home/presentation/view/home_view.dart';
import 'package:genmcu/app/modules/splash/bindings/splash_binding.dart';
import 'package:genmcu/app/modules/splash/presentation/view/splash_view.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

class AppViews {
  AppViews._();

  static final routes = [
    GetPage(
      name: _Paths.splash,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    )
  ];
}
