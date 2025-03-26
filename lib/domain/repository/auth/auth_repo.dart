 import 'package:dartz/dartz.dart';
import 'package:spotify_clone/data/models/auth/create_user_request.dart';
import 'package:spotify_clone/data/models/auth/sign_in_user_request.dart';

abstract class AuthRepository 
 {


  Future<Either> signIn( SignInUserRequest signInUserRequest);


  Future<Either> signUp(CreateUserRequest createUserRequest);
 }