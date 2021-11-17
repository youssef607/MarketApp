import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/core/utils/Size_Config.dart';
import 'package:test_project/features/on%20boarding/presentation/on_bording_view.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  _SplashBodyState createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> with SingleTickerProviderStateMixin{

  AnimationController? animationController;
  Animation? fadingAnimation;


@override
  void dispose() {
    animationController?.dispose();

    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);

    animationController?.repeat(reverse: true);

    GoToNext();
  }
  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);
    return Column(
      children: [
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              AnimatedBuilder(
                animation: fadingAnimation!, 
                builder:(context,_)=> Opacity(
                  opacity: fadingAnimation?.value,
                  child: Text('Location de voiture',style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 51,
                  ),),
                ),
              ),
              // SizedBox(
              //     height: 200,
              //     width: 200,
              //   child: Image.asset("assets/images/splash_view_image.png"))
            ],
          ),

        ),
      ],
    );
  }

  void GoToNext() {

    Future.delayed(Duration(seconds: 3),
      (){
        Get.to(()=>on_boarding_view(),transition: Transition.fade);
      }
    );
  }
}