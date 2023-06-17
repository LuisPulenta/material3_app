import 'package:go_router/go_router.dart';
import 'package:material3_app/presentation/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/theme',
      builder: (context, state) => const ThemeConfigScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/textstyles',
      builder: (context, state) => const TextstylesScreen(),
    ),
    GoRoute(
      path: '/pantalla3',
      builder: (context, state) => const Pantalla3Screen(),
    ),
    GoRoute(
      path: '/pantalla4',
      builder: (context, state) => const Pantalla4Screen(),
    ),
    GoRoute(
      path: '/pantalla5',
      builder: (context, state) => const Pantalla5Screen(),
    ),
  ],
);
