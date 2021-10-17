import 'package:ecomme/View/Screens/ForgetPass.dart';
import 'package:ecomme/View/Screens/HomeScreen.dart';
import 'package:ecomme/View/Screens/signin.dart';
import 'package:ecomme/View/Screens/signupscreen.dart';
import 'package:ecomme/View/Screens/splashScreeen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main()
{
  runApp(Ecommerce());
}

class Ecommerce extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: ()=>
    MaterialApp(

initialRoute: SplashScreen.id,
      routes: {
  SplashScreen.id:(context)=>SplashScreen(),
        SignInScreen.id:(context)=>SignInScreen(),
        SignUpScreen.id:(context)=>SignUpScreen(),
        ForgetPassScreen.id:(context)=>ForgetPassScreen(),
        HomeScreen.id:(context)=>HomeScreen(),


      },
    )
    );
  }
}
