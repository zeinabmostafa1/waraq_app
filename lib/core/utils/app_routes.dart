import 'package:go_router/go_router.dart';
import 'package:waraq/features/home/presentation/views/book_details_view.dart';
import 'package:waraq/features/home/presentation/views/home_view.dart';
import 'package:waraq/features/splash/presentaion/views/splash_view.dart';

import '../../features/search/presentation/views/search_view.dart';

abstract class AppRoutes {
  static const kHomeView = '/homeView';
  static const kBookDetails = '/bookDetails';
  static const kSearchView = '/SearchView';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: kHomeView, builder: (context, state) => HomeView()),
      GoRoute(path: kBookDetails, builder: (context, state) => BookDetailsView()),
      GoRoute(path: kSearchView, builder: (context, state) => SearchView()),
    ],
  );
}
