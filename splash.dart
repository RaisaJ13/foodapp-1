import 'package:flutter/material.dart';
import 'package:untitled1/widgets/custom_scaffold.dart';
import 'package:untitled1/screens/welcome_screen.dart';
import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    /*Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context) => MyHomePage(title: 'GFG',),),);*/
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const welcome_screen()));
  }

  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
            flex: 8,
            child: Container(

              padding: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 40.0,
              ),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    children: [
                     // Image.asset(image: "image/Checkers.png");
                      TextSpan(
                        text: 'CHECKERS\n',
                        style: TextStyle(
                          fontSize: 45.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text:
                        '\nFood.Specialty.Review',
                        style: TextStyle(
                          fontSize: 20,
                          // height: 0,
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}





