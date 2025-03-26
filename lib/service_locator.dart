
import 'package:get_it/get_it.dart';
import 'package:spotify_clone/data/repos/auth_impl/auth_repo_impl.dart';
import 'package:spotify_clone/data/sources/auth/auth_firebase.dart';
import 'package:spotify_clone/domain/repository/auth/auth_repo.dart';
import 'package:spotify_clone/domain/use_case/auth/sign_up_use_case.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  serviceLocator.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());


  serviceLocator.registerSingleton<AuthRepository>(AuthRepoImpl());

  serviceLocator.registerSingleton<SignUpUseCase>(SignUpUseCase());



}