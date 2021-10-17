import 'package:ecomme/View/Screens/signin.dart';
import 'package:ecomme/View/Widgets/customTextField.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ForgetPassScreen extends StatefulWidget {
 static String id='fPass';
  @override
  _ForgetPassScreenState createState() => _ForgetPassScreenState();
}

class _ForgetPassScreenState extends State<ForgetPassScreen> {
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

              Column(
                children: [



                 Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CustomTextFormField(
                      prefix: Icons.email,hint: 'Enter Email',
                      secure: true,
                    ),
                  ),

                ],),
          SizedBox(height: 40.h,),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              height: 50.h,
              width: .8.sw,
              decoration: BoxDecoration(color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(10.r)),
              child: Center(
                child: Text('Reset Email',style: TextStyle(color: Colors.white,fontSize: 30.sp),),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
