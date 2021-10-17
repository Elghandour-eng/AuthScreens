import 'package:ecomme/View/Screens/ForgetPass.dart';
import 'package:ecomme/View/Screens/signupscreen.dart';
import 'package:ecomme/View/Widgets/customTextField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class SignInScreen extends StatefulWidget {
static String id ='signIn';
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
 GlobalKey<FormState>key=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 30.h,),
          Icon(FontAwesomeIcons.shopify,size: 80.sp,color: Colors.deepPurple,),
          SizedBox(height: 70.h,),
          Form(
              key: key,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
            children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: CustomTextFormField(
                hint: 'Enter Email',prefix: Icons.person,
              ),
            ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CustomTextFormField(
                    prefix: Icons.lock,hint: 'Enter Password',
                  ),
                ),
Row(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
    TextButton(onPressed: (){
      Navigator.pushNamed(context, ForgetPassScreen.id);
    }, child:Text('Forget Password ?') )
  ],
)
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
                child: Text('Sign In',style: TextStyle(color: Colors.white,fontSize: 30.sp),),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Didn\'t Have Account? '),

              InkWell(
                  onTap: ()
                  {
                    Navigator.pushNamed(context, SignUpScreen.id);
                  },
                  child: Text('SignUp',
              style: TextStyle(color: Colors.deepPurple,fontSize: 22.5),)),

            ],
          )

        ],
      ),
    );
  }
}
