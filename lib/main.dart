import 'package:college_project/forget_screen.dart';
import 'package:college_project/home_screen.dart';
import 'package:college_project/login.dart';
import 'package:college_project/sign_up_screen.dart';
import 'package:college_project/splash.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/splash',
      routes: {

        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
        '/forgotpassword': (context) => const ForgotPasswordScreen(),
        '/sign-up': (context) => const SignUpScreen(),
        '/splash':(context)=> const SplashScreen()
      },
    );
  }
}
