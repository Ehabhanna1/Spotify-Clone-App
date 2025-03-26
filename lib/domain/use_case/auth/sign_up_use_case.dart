

import 'package:dartz/dartz.dart';
import 'package:spotify_clone/core/use_cases/use_case.dart';
import 'package:spotify_clone/data/models/auth/create_user_request.dart';
import 'package:spotify_clone/domain/repository/auth/auth_repo.dart';
import 'package:spotify_clone/service_locator.dart';

class SignUpUseCase  implements UseCase<Either, CreateUserRequest>{
  @override
  Future<Either> call({CreateUserRequest? params}) async{
    
     return serviceLocator<AuthRepository>(). signUp(params!);
  }
}