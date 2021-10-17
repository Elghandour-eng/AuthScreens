import 'package:flutter/material.dart';


class CustomTextFormField extends StatelessWidget {
 String? hint;
var onSaved;
var validator;
IconData? prefix;
bool? secure;
CustomTextFormField({this.prefix,this.onSaved,this.validator,this.hint,this.secure});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator ,
      onSaved: onSaved,
      obscureText: secure ==null?false:true,
      decoration: InputDecoration(
        hintText: hint,

        prefixIcon: Icon(prefix ,color: Colors.deepPurple,) ,
      ),
    );
  }
}
