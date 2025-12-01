import 'package:dripsta/screens/auth/sign_in_screen.dart';
import 'package:dripsta/screens/auth/sign_up_screen.dart';
import 'package:dripsta/screens/cart/cart_screen.dart';
import 'package:dripsta/screens/chat_menu/chat_screen.dart';
import 'package:dripsta/screens/chat_menu/detail_chat.dart';
import 'package:dripsta/screens/home/home_screen.dart';
import 'package:dripsta/screens/home/main_screen.dart';
import 'package:dripsta/screens/profile/menu/edit_profile_screen.dart';
import 'package:dripsta/screens/profile/profile_screen.dart';
import 'package:dripsta/screens/wishlist_menu/wishlist_screen.dart';
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

        GoRoute(path: 'chat/detail-chat', pageBuilder: (context, state) => NoTransitionPage(child: const DetailChat())),

        GoRoute(path: 'profile/edit-profile', pageBuilder: (context, state) => NoTransitionPage(child: const EditProfileScreen())),

        GoRoute(path: 'cart', pageBuilder: (context, state) => NoTransitionPage(child: const CartScreen())),

        ShellRoute(
          builder: (context, state, child) => MainScreen(child: child),
          routes: [
            GoRoute(
              path: 'home',
              pageBuilder: (context, state) =>
                  NoTransitionPage(child: const HomeScreen()),
            ),
            GoRoute(
              path: 'chat',
              pageBuilder: (context, state) =>
                  NoTransitionPage(child: const ChatScreen(),),
            ),
            GoRoute(
              path: 'wishlist',
              pageBuilder: (context, state) =>
                  NoTransitionPage(child: const WishListScreen()),
            ),
            GoRoute(
              path: 'profile',
              pageBuilder: (context, state) =>
                  NoTransitionPage(child: const ProfileScreen()),
            ),
          ],
        ),
      ],
    ),
  ],
);

GoRouter get appRouter => _goRoute;
