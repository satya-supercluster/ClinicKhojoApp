import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPInput extends StatefulWidget {
  final bool isFirst;
  final TextEditingController controller;

  const OTPInput({
    super.key,
    required this.isFirst,
    required this.controller,
  });

  @override
  State<OTPInput> createState() => _OTPInputState();
}

class _OTPInputState extends State<OTPInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width:40,
      height: 40,
      decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      ),
      child: TextFormField(
        onChanged: (value){
          if(value.length==1){
            FocusScope.of(super.context).nextFocus();
          }
        },
        textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.center,
        keyboardType: TextInputType.number,
        inputFormatters:[
          // FilteringTextInputFormatter.allow(RegExp('[0-9]')),
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        cursorColor: Colors.black,
        controller: widget.controller,
        autofocus: true,
        style: TextStyle(
          fontSize: 20.0, 
          color: Color.fromARGB(150, 0, 0, 0),
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: "0",
          hintStyle: TextStyle(color: Colors.grey,fontSize: 15),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(5),
          ),
          enabledBorder: UnderlineInputBorder( 
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}