  import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:test_project/features/Auth/domain/Repositories/Auth_Repo.dart';

class AuthRepoImpl extends AuthRepo {
  @override
  Future CompleteInfo(String name, String phoneNumber, String adress) {
    throw UnimplementedError();
  }

  @override
  Future loginWithFacebook() async{
  final LoginResult loginResult = await FacebookAuth.instance.login();
  final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token);
  return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }

  @override
  Future<Either<Exception,UserCredential>> loginWithGoogle() async
  {
    try {
        final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential
      (
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      return Right(await FirebaseAuth.instance.signInWithCredential(credential)) ;
    } catch (e) {
    }
      return left(Exception('something wrong'));
    }
  }