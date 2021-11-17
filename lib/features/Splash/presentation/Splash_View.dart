import 'package:flutter/material.dart';
import 'package:test_project/features/Splash/presentation/widgets/splash_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SplashBody(),
    );
  }
}