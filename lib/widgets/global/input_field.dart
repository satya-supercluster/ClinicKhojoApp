import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InputField extends StatefulWidget {
  final TextEditingController? controller;
  final String hintText;
  final Key? fieldKey;
  final bool? isPasswordField;
  final prefixIcon;
  const InputField({
    super.key,
    this.controller,
    required this.hintText,
    required this.prefixIcon,
    this.fieldKey,
    this.isPasswordField
  });


  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  late bool _obscureText=false;
  @override
  void initState(){
    super.initState();
    _obscureText=widget.isPasswordField==true;
  }
  @override
  Widget build(BuildContext context) {
    return  new TextFormField(
      textAlignVertical: TextAlignVertical.center,
      cursorColor: Colors.black,
      obscureText: _obscureText,
      controller: widget.controller,
      autofocus: false,
      style: TextStyle(
        fontSize: 18.0, 
        color: Color.fromARGB(150, 0, 0, 0),
        fontWeight: FontWeight.w600
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: widget.hintText,
        hintStyle: TextStyle(color: Colors.grey,fontSize: 15),
        contentPadding:
            const EdgeInsets.only(left:15,right:15),
        focusedBorder: OutlineInputBorder(
          // borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(5),
        ),
        enabledBorder: UnderlineInputBorder(
          // borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(5),
        ),
        prefixIcon: Icon(
          widget.prefixIcon,
          color: Colors.grey,
          size: 20,
        ),
        suffixIcon:GestureDetector(
            onTap: () {
              setState(() {
                print(_obscureText);
                _obscureText = !_obscureText;
                print(_obscureText);
              });
            },
            child:AbsorbPointer(
              // absorbing: widget.isPasswordField??false,
              child: (widget.isPasswordField==true)? Icon(_obscureText ? Icons.visibility_off : Icons.visibility, color: _obscureText == false ? Colors.blue : Colors.grey,) : Text(""),  
            )
          ),
      ),
      
    );
  }
}