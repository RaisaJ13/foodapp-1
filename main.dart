import 'package:flutter/material.dart';
import 'package:untitled1/screens/welcome_screen.dart';
import 'package:untitled1/splash.dart';
//import 'package:untitled1/screens/splashscreen.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Checkers',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: const WelcomeScreen(),
      home : Splash(),
      //home: const MySplashScreen(),

    );
  }
}









