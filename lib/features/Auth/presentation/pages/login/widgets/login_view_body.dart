import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_project/core/constants.dart';
import 'package:test_project/core/utils/Size_Config.dart';
import 'package:test_project/core/widgets/Custom_Butons.dart';
import 'package:test_project/features/Auth/data/Auth/Auth_Repo_impl.dart';
import 'package:test_project/features/Auth/domain/Repositories/Auth_Repo.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  _LoginViewBodyState createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {

final AuthRepoImpl authRepoImpl=new AuthRepoImpl();

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        SizedBox(
          child: Image.asset(KLogo),
          height: SizeConfig.defaultSize!*17,
        ),

         Text.rich(
          TextSpan(
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 51,
              color: const Color(0xff69a03a),
            ),
            children: [
              TextSpan(
                text: 'F',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: 'ruit Market',
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),  
           textHeightBehavior:
              TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.left,
        ),
                Expanded(child: SizedBox()),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CustomButtonWithIcon(
                  color: Color(0xFFdb3236),
                  iconData: FontAwesomeIcons.googlePlusG,
                  text: 'Log in with ',
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CustomButtonWithIcon(
                  onTap: () {
                    authRepoImpl.loginWithGoogle();
                    // Get.to(() => CompleteInformationView(),
                    //     duration: Duration(milliseconds: 500),
                    //     transition: Transition.rightToLeft);
                  },
                  color: Color(0xFF4267B2),
                  iconData: FontAwesomeIcons.facebookF,
                  text: 'Log in with ',
                ),
              ),
            )
          ],
        ),
        Expanded(child: SizedBox()),
      ],
    );
  }
}