
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify_clone/data/models/auth/create_user_request.dart';
import 'package:spotify_clone/data/models/auth/sign_in_user_request.dart';

abstract class AuthFirebaseService {
  Future<Either> signIn(SignInUserRequest signInUserRequest);
  Future<Either> signUp( CreateUserRequest createUserRequest);
}



class AuthFirebaseServiceImpl implements AuthFirebaseService {
  @override
  Future<Either> signIn(SignInUserRequest signInUserRequest) async{

    try{

      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: signInUserRequest.email,
        password: signInUserRequest.password,
      );

      return const Right('SignIn was successfull');



    } on FirebaseAuthException catch (e) {
      String message = '';

      if (e.code == 'invalid-email') {
        message = 'The email address is not valid.';
      } else if (e.code == 'invalid-credentials') {
        message = 'The password is invalid.';
      }




      return left(message);


    }
    
  }

  @override
  Future<Either> signUp(CreateUserRequest createUserRequest) async {
    try{

     var data = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: createUserRequest.email,
        password: createUserRequest.password,
        
      );
      FirebaseFirestore.instance.collection('Users').doc(data.user?.uid)
      .set(
        {
          'name' : createUserRequest.fullName,
          'email' : data.user?.email,
        }
      );

      return const Right('SignUp was successfull');


    }on FirebaseAuthException catch(e){

      String message = '';

      if (e.code == 'weak-password') {
        message = 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        message = 'The account already exists for that email.';
      }




      return left(message);
    }
    
  }
}