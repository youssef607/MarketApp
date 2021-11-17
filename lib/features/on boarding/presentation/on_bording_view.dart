import 'package:flutter/material.dart';
import 'package:test_project/features/on%20boarding/presentation/widgets/on_boarding_body.dart';

class on_boarding_view extends StatelessWidget {
  const on_boarding_view({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: OnboardingBody(),
    );
  }
}