import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:dartz/dartz.dart';



abstract class AuthRepo{
  Future<Either<Exception,UserCredential>> loginWithGoogle();
  Future loginWithFacebook();
  Future CompleteInfo(@required String name,@required String phoneNumber,@required String adress);
}