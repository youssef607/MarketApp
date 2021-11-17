
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/core/utils/Size_Config.dart';
import 'package:test_project/core/widgets/Custom_Butons.dart';
import 'package:test_project/features/Auth/presentation/pages/login/Login_View.dart';
import 'package:test_project/features/on%20boarding/presentation/widgets/custom_DotsIndicator.dart';
import 'package:test_project/features/on%20boarding/presentation/widgets/custom_page_view.dart';


class OnboardingBody extends StatefulWidget {
  const OnboardingBody({Key? key}) : super(key: key);

  @override
  _OnboardingBodyState createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {

  PageController? pageController;

  @override
  void initState() {
    pageController=PageController(initialPage: 0)..addListener(() {
      setState(() {
        

      });
    });
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(
          pageController: pageController,
        ),
        Positioned(
          left: 0,
          right: 0,
              bottom: SizeConfig.defaultSize!*15 ,


          child: Custom_Dots_Indicator(    dotindex: pageController!.hasClients? pageController!.page:0)
        ),
          Visibility(
            visible:pageController!.hasClients&& pageController?.page==2?false:true,
            child: Positioned(
              top: SizeConfig.defaultSize!*10,
              right: 32,
              child: Text("Skip",style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: const Color(0xff898989)
              ),
              textAlign: TextAlign.left,),
            ),
          ),
            Positioned(
              bottom: SizeConfig.defaultSize!*5 ,
              left: SizeConfig.defaultSize!*5 ,
              right : SizeConfig.defaultSize!*5 ,
              child: Custom_General_Button(
                onTap: (){
                  if(pageController!.page!<2)
                  {
                      pageController?.nextPage(duration: Duration(milliseconds: 500,
                      
                      ), curve:Curves.easeIn);
                  }else
                  Get.to(()=>LoginView(),transition: Transition.rightToLeft,duration: Duration(milliseconds: 500));
                },
                text:pageController!.hasClients&& pageController?.page==2?'GetStarted':'Next',
              )),

      ],
    );
  }
}