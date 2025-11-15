import 'package:dripsta/screens/sign_in_screen.dart';
import 'package:dripsta/screens/sign_up_screen.dart';
import 'package:dripsta/screens/splash_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter _goRoute = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
      routes: [
        GoRoute(
          path: 'signIn',
          builder: (context, state) => const SignInScreen(),
        ),

        GoRoute(
          path: 'signUp',
          builder: (context, state) => const SignUpScreen(),
        ),
      ],
    ),
  ],
);

GoRouter get appRouter => _goRoute;
