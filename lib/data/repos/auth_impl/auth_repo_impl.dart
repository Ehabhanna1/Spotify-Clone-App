import 'package:dartz/dartz.dart';
import 'package:spotify_clone/data/models/auth/create_user_request.dart';
import 'package:spotify_clone/data/models/auth/sign_in_user_request.dart';
import 'package:spotify_clone/data/sources/auth/auth_firebase.dart';
import 'package:spotify_clone/domain/repository/auth/auth_repo.dart';
import 'package:spotify_clone/service_locator.dart';

class AuthRepoImpl extends AuthRepository{
  @override
  Future<Either> signIn(SignInUserRequest signInUserRequest) async {

    return await  serviceLocator<AuthFirebaseService>().signIn(signInUserRequest);
   
  }

  @override
  Future<Either> signUp(CreateUserRequest createUserRequest) async {
    return await  serviceLocator<AuthFirebaseService>().signUp(createUserRequest);
  }
}