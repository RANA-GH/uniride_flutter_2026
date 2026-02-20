import 'package:flutter/material.dart';
import 'package:uniride/core/app_routes/routes.dart';
import 'package:uniride/features/onboarding_pages/screens/onboarding01_screen.dart';
import 'package:uniride/features/onboarding_pages/screens/onboarding02_screen.dart';
import 'package:uniride/features/onboarding_pages/screens/onboarding03_screen.dart';
import 'package:uniride/features/signup/presentation/signup_screen.dart';
import 'package:uniride/features/splash_pages/splash01_screen.dart';

class AppRouter {
  static Route<dynamic>? Function(RouteSettings)? onGenerateRoute = (settings) {
    final bool withFade =
        (settings.arguments is Map &&
            (settings.arguments as Map).containsKey('withFade'))
        ? (settings.arguments as Map)['withFade'] == true
        : false;

    switch (settings.name) {
      //Splash Screen
      case Routes.splash:
        return MaterialPageRoute(builder: (context) => SplashScreen());

      // Onboarding01 Screen
      case Routes.onBoarding01:
        final bool withFade =
            (settings.arguments is Map &&
                (settings.arguments as Map).containsKey('withFade'))
            ? (settings.arguments as Map)['withFade'] == true
            : false;

        return withFade
            ? PageRouteBuilder(
                transitionDuration: const Duration(milliseconds: 300),
                pageBuilder: (context, animation, secondaryAnimation) =>
                    const Onboarding01Screen(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                      return FadeTransition(
                        opacity: CurvedAnimation(
                          parent: animation,
                          curve: Curves.easeOut,
                        ),
                        child: child,
                      );
                    },
              )
            : MaterialPageRoute(
                builder: (context) => const Onboarding01Screen(),
              );

      // Onboarding02 Screen
      case Routes.onBoarding02:
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 300),
          pageBuilder: (context, animation, secondaryAnimation) =>
              const Onboarding02Screen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: CurvedAnimation(
                parent: animation,
                curve: Curves.easeOut,
              ),
              child: child,
            );
          },
        );

      // Onboarding03 Screen
      case Routes.onBoarding03:
        final bool withFade =
            (settings.arguments is Map &&
                (settings.arguments as Map).containsKey('withFade'))
            ? (settings.arguments as Map)['withFade'] == true
            : false;

        return withFade
            ? PageRouteBuilder(
                transitionDuration: const Duration(milliseconds: 300),
                pageBuilder: (context, animation, secondaryAnimation) =>
                    const Onboarding03Screen(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                      return FadeTransition(
                        opacity: CurvedAnimation(
                          parent: animation,
                          curve: Curves.easeOut,
                        ),
                        child: child,
                      );
                    },
              )
            : MaterialPageRoute(
                builder: (context) => const Onboarding03Screen(),
              );

      // Sign Up Screen
      case Routes.signup:
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 1200),
          pageBuilder: (context, animation, secondaryAnimation) =>
              const SignUpScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final offsetAnimation = Tween<Offset>(
              begin: const Offset(1, 0), // slide from right
              end: Offset.zero,
            ).animate(CurvedAnimation(parent: animation, curve: Curves.linear));
            return SlideTransition(position: offsetAnimation, child: child);
          },
        );

      // Default fallback
      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text("Route Not Found"))),
        );
    }
  };
}
