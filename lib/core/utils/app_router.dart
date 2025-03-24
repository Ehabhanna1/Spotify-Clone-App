import 'package:go_router/go_router.dart';
import 'package:spotify_clone/presentation/views/get_started/get_srarted_view.dart';
import 'package:spotify_clone/presentation/views/home/home_view.dart';
import 'package:spotify_clone/presentation/views/splash/splash_view.dart';

abstract class AppRouter {
  static const kSplashView = '/';
  static const kGetStartedView = '/getStartedView';
  static const kHomeView = '/homeView';
  //static const kBookDetailsView = '/bookdetailsView';
  //static const kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: kGetStartedView, builder: (context, state) => const GetSrartedView()),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
     
    ],
  );
}