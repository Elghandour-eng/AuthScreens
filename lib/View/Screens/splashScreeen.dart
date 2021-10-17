import 'dart:async';

import 'package:ecomme/View/Screens/signin.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
 static String id ='splash';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState()
  {
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.popAndPushNamed(context, SignInScreen.id);
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(FontAwesomeIcons.shopify,color: Colors.deepPurple,
        size: 90.sp,),
      ),
    );
  }
}
