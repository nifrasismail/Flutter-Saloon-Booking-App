import 'package:go_router/go_router.dart';
import 'package:saloon_booking_app/models/stylist.dart';
import 'package:saloon_booking_app/screens/detail_screen.dart';
import 'package:saloon_booking_app/screens/home_screen.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/detail',
      builder: (context, state) {
        Stylist stylistDetailModel = state.extra as Stylist;
        return DetailScreen(stylist: stylistDetailModel);
      },
    ),
  ],
);
