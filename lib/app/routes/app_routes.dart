part of 'app_views.dart';

abstract class Routes {
  Routes._();
  static const splash = _Paths.splash;
  static const home = _Paths.home;
}

abstract class _Paths {
  static const splash = '/splash';
  static const home = '/home';
}
