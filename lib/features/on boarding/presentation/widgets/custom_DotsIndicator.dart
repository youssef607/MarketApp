import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:test_project/core/constants.dart';

class Custom_Dots_Indicator extends StatelessWidget {
  const Custom_Dots_Indicator({Key? key,@required this.dotindex}) : super(key: key);

  final double? dotindex;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(dotsCount: 3,
            position: dotindex!,
            
            decorator: DotsDecorator(
              
              color: Colors.transparent,
              activeColor: KMainColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: KMainColor)
              )
            ),
          );
  }
}