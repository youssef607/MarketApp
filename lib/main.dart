import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/features/Splash/presentation/Splash_View.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async{
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FruitsMarket());
}

class FruitsMarket extends StatelessWidget {
  const FruitsMarket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}