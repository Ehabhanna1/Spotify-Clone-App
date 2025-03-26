import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify_clone/data/models/auth/create_user_request.dart';

abstract class AuthFirebaseService {
  Future<void> signIn();
  Future<void> signUp( CreateUserRequest createUserRequest);
}



class AuthFirebaseServiceImpl implements AuthFirebaseService {
  @override
  Future<void> signIn() {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<void> signUp(CreateUserRequest createUserRequest) async {
    try{

      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: createUserRequest.email,
        password: createUserRequest.password,
        
      );


    }on FirebaseAuthException catch(e){
      print(e);
    }
    
  }
}