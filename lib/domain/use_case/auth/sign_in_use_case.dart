import 'package:dartz/dartz.dart';
import 'package:spotify_clone/core/use_cases/use_case.dart';
import 'package:spotify_clone/data/models/auth/sign_in_user_request.dart';
import 'package:spotify_clone/domain/repository/auth/auth_repo.dart';
import 'package:spotify_clone/service_locator.dart';

class SignInUseCase  implements UseCase<Either, SignInUserRequest>{
  @override
  Future<Either> call({SignInUserRequest? params}) async {

    return await serviceLocator<AuthRepository>().signIn(params!);
   
  }
}