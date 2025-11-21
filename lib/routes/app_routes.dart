import 'package:dripsta/screens/auth/sign_in_screen.dart';
import 'package:dripsta/screens/auth/sign_up_screen.dart';
import 'package:dripsta/screens/home/chat_screen.dart';
import 'package:dripsta/screens/home/home_screen.dart';
import 'package:dripsta/screens/home/main_screen.dart';
import 'package:dripsta/screens/home/profile_screen.dart';
import 'package:dripsta/screens/home/whistlist_screen.dart';
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

        ShellRoute(
          builder: (context, state, child) => MainScreen(
            child: child,
          ),
          routes: [
            GoRoute(
              path: 'home',
              builder: (context, state) => const HomeScreen(),
            ),
            GoRoute(
              path: 'chat',
              builder: (context, state) => const ChatScreen(),
            ),
            GoRoute(
              path: 'whistList',
              builder: (context, state) => const WhistlistScreen(),
            ),
            GoRoute(
              path: 'profile',
              builder: (context, state) => const ProfileScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);

GoRouter get appRouter => _goRoute;
