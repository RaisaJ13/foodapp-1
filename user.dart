import 'package:flutter/material.dart';
import 'package:untitled1/screens/signin_screen.dart';
import 'package:untitled1/screens/signup_screen.dart';
import 'package:untitled1/theme/theme.dart';
import 'package:untitled1/widgets/custom_scaffold.dart';
import 'package:untitled1/widgets/welcome_button.dart';
import 'package:untitled1/screens/applogo.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}
class _UserState extends State<User>  {

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          const applogo(),
          Flexible(
            flex: 2,
            child: Container(

              padding: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 40.0,
              ),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan (
                    children: [
                      // Image.asset("assets/images/Checkers.png",40);
                      TextSpan(
                        text: 'Log in as user\n',
                        style: TextStyle(
                          fontSize:35.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      /*TextSpan(
                        text:
                        '\nFood.Specialty.Review',
                        style: TextStyle(
                          fontSize: 20,
                          // height: 0,
                        ),
                      ),*/

                    ],
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Align(
              alignment: Alignment.bottomCenter,

              child: Row(
                children: [

                  const Expanded(
                    child: WelcomeButton(
                      buttonText: 'Sign in ',
                      onTap: SignInScreen(),
                      color: Colors.transparent,
                      textColor:  Colors.white ,
                    ),
                  ),
                  Expanded(
                    child: WelcomeButton(
                      buttonText: 'Sign up',
                      onTap: const SignUpScreen(),
                      color: Colors.white,
                      textColor:  lightColorScheme.primary,
                    ),

                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
