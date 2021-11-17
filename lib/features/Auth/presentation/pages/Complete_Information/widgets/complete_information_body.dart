import 'package:flutter/material.dart';
import 'package:test_project/core/utils/Spaced_widget.dart';
import 'package:test_project/core/widgets/Custom_Butons.dart';
import 'package:test_project/features/Auth/presentation/pages/Complete_Information/widgets/complete_information_item.dart';


class CompleteInformationBody extends StatelessWidget {
  const CompleteInformationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          VerticalSpace(10),
          CompleteInfoItem(
            text: 'Enter your name',
          ),
          VerticalSpace(2),
          CompleteInfoItem(
            text: 'Enter your phone number',
          ),
          VerticalSpace(2),
          CompleteInfoItem(
            maxLines: 5,
            text: 'Enter your address',
          ),
          VerticalSpace(5),
          Custom_General_Button(
            text: 'Login',
          )
        ],
      ),
    );
  }
}