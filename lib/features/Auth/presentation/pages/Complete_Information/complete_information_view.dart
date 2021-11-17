import 'package:flutter/material.dart';
import 'package:test_project/features/Auth/presentation/pages/Complete_Information/widgets/complete_information_body.dart';

class CompleteInformationView extends StatelessWidget {
  const CompleteInformationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: CompleteInformationBody()),
    );
  }
}