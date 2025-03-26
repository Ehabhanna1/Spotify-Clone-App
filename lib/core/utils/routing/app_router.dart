import 'package:go_router/go_router.dart';
import 'package:spotify_clone/presentation/auth/view/sign_in_view.dart';
import 'package:spotify_clone/presentation/auth/view/sign_up_view.dart';
import 'package:spotify_clone/presentation/auth/view/signin_or_singup_view.dart';
import 'package:spotify_clone/presentation/choose%20mode/view/choose_mode_view.dart';
import 'package:spotify_clone/presentation/get_started/get_srarted_view.dart';
import 'package:spotify_clone/presentation/home/home_view.dart';
import 'package:spotify_clone/presentation/profil/views/profile_view.dart';
import 'package:spotify_clone/presentation/splash/splash_view.dart';

abstract class AppRouter {
  static const kSplashView = '/';
  static const kGetStartedView = '/getStartedView';
  static const kChooseModeView = '/chooseModeView';
  static const kSignInOrSignUpView = '/signInOrSignUpView';
  static const kSignInView = '/signInView';
  static const kSignUpView = '/signUpView';
  static const kHomeView = '/homeView';
  static const kProfileView = '/profileView';


 

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: kGetStartedView, builder: (context, state) => const GetSrartedView()),
      GoRoute(path: kChooseModeView, builder: (context, state) => const ChooseModeView()),
      GoRoute(path: kSignInOrSignUpView, builder: (context, state) => const SigninOrSingupView()),
      GoRoute(path: kSignInView, builder: (context, state) =>  SignInView()),
      GoRoute(path: kSignUpView, builder: (context, state) =>  SignUpView()),

      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
      GoRoute(path: kProfileView, builder: (context, state) => const ProfileView()),
      
     
    ],
  );
}