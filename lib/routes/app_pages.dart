import 'package:get/get.dart';
import 'package:tcc/screens/home/home_page.dart';
import 'package:tcc/screens/login/sign_in_screen.dart';
import 'package:tcc/screens/login/sign_up_screen.dart';

import 'package:tcc/screens/splash/splash_screen.dart';

abstract class AppPages {
  static final pages = <GetPage>[
    GetPage(
      name: PagesRoutes.splashRoute,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: PagesRoutes.signInRoute,
      page: () => SignInScreen(),
    ),
    GetPage(
      name: PagesRoutes.signUpRoute,
      page: () => SignUpScreen(),
    ),
    GetPage(
      name: PagesRoutes.homeRoute,
      page: () => HomeScreen(),
    ),
 
  ];
}

abstract class PagesRoutes {
  static const String signInRoute = '/signin';
  static const String signUpRoute = '/signup';
  static const String splashRoute = '/splash';
  static const String homeRoute = '/home';
}
