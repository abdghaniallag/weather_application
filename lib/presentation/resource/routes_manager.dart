import 'package:flutter/material.dart';

import '../main_screen/main_view.dart';
import '../splash/splash_view.dart';
import 'strings_manager.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onBoarding";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/ForgotPassword";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => SplashView());
      case Routes.forgotPasswordRoute:

      //   return MaterialPageRoute(builder: (_) => ForgotPasswordView());
      // case Routes.loginRoute:

      //   return MaterialPageRoute(builder: (_) => LoginView());
      // case Routes.onBoardingRoute:
      //   return MaterialPageRoute(builder: (_) => OnBoardingView());
      // case Routes.registerRoute:
      //   return MaterialPageRoute(builder: (_) => RegisterView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => MainView());
      default:
        return UnDefindeRoute();
    }
  }

  static Route<dynamic> UnDefindeRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text(AppStrings.noRoutFound),
              ),
              body: Center(child: Text(AppStrings.noRoutFound)),
            ));
  }
}
