import 'package:fiufood_mob/features/auth/presentation/screens/login_screen.dart';
import 'package:fiufood_mob/features/auth/presentation/screens/register_screen.dart';
import 'package:fiufood_mob/features/home/presentation/screens/home_screen.dart';
import 'package:fiufood_mob/features/home/presentation/screens/main_screen.dart';
import 'package:fiufood_mob/features/onboarding/onboarding_screen.dart';
import 'package:fiufood_mob/features/splash/splash_screen.dart';
import 'package:fiufood_mob/features/welcome/welcome_screen.dart';
import 'package:go_router/go_router.dart';

final goRouter = GoRouter(
  initialLocation: "/splash",
  routes: [
    GoRoute(
      path: "/splash",
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: "/welcome",
      builder: (context, state) => const WelcomeScreen(),
    ),
    GoRoute(
      path: "/onboarding",
      builder: (context, state) => const OnBoardingScreen(),
    ),
    GoRoute(
      path: "/register",
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: "/login",
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: "/main",
      builder: (context, state) => MainScreen(),
    ),
  ],
);
