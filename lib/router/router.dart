import 'package:go_router/go_router.dart';
import 'package:xmarkets/ui/page/watchlist/watchlist_page.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const WatchListPage(),
    ),
  ],
);
