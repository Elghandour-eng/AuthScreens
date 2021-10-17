import 'package:ecomme/View/Screens/signin.dart';
import 'package:ecomme/View/Widgets/customTextField.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SignUpScreen extends StatefulWidget {
  static String id='signUp';
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  GlobalKey<FormState>key=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              BackButton(color: Colors.deepPurple,),
            ],
          ),
          SizedBox(height: 30.h,),
          Icon(FontAwesomeIcons.shopify,size: 80.sp,color: Colors.deepPurple,),
          SizedBox(height: 30.h,),
          Form(
              key: key,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: CustomTextFormField(
                        hint: 'Enter Email',prefix: Icons.email,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: CustomTextFormField(
                        prefix: Icons.person,hint: 'Enter Name',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: CustomTextFormField(
                        prefix: Icons.lock,hint: 'Enter Password',
                        secure: true,
                      ),
                    ),  Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: CustomTextFormField(
                        prefix: Icons.lock,hint: 'Confirm Password',
                        secure: true,
                      ),
                    ),

                  ],),
              )),
          SizedBox(height: 40.h,),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              height: 50.h,
              width: .8.sw,
              decoration: BoxDecoration(color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(10.r)),
              child: Center(
                child: Text('Sign UP',style: TextStyle(color: Colors.white,fontSize: 30.sp),),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already Have Account? '),

              InkWell(
                  onTap: ()
                  {
                    Navigator.pushNamed(context, SignInScreen.id);
                  },
                  child: Text('Sign IN',
                    style: TextStyle(color: Colors.deepPurple,fontSize: 22.5),)),

            ],
          )

        ],
      ),
    );
  }
}
