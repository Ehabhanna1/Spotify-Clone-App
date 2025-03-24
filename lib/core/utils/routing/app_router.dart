import 'package:go_router/go_router.dart';
import 'package:spotify_clone/presentation/views/choose%20mode/choose_mode_view.dart';
import 'package:spotify_clone/presentation/views/get_started/get_srarted_view.dart';
import 'package:spotify_clone/presentation/views/home/home_view.dart';
import 'package:spotify_clone/presentation/views/splash/splash_view.dart';

abstract class AppRouter {
  static const kSplashView = '/';
  static const kGetStartedView = '/getStartedView';
  static const kChooseModeView = '/chooseModeView';
  static const kHomeView = '/homeView';
  //static const kBookDetailsView = '/bookdetailsView';
  //static const kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: kGetStartedView, builder: (context, state) => const GetSrartedView()),
      GoRoute(path: kChooseModeView, builder: (context, state) => const ChooseModeView()),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
     
    ],
  );
}