import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const Color buttonBackGroundColor = Color(0xffF5F5F7);
const Color primaryTextColor = Color(0xff7F889C);
const Color clearButtonIconColor = Color(0xff22274D);
const Color backgroundColor = Color(0xffFEFEFE);
const Color appBarTextColor = Color(0xff222222);
const Color pinColor = Color(0xff6F5EBA);
const Color pinBorderColor = Color(0xffD4D9D8);

ButtonStyle buttonsStyle = ButtonStyle(
   backgroundColor: MaterialStateProperty.all(buttonBackGroundColor),

);

TextStyle textStyle =  const TextStyle(
   color: primaryTextColor,
fontSize: 16,
);
TextStyle textAppBarStyle =  const TextStyle(
   color: primaryTextColor,
fontSize: 14,
   fontWeight:FontWeight.w400
);
TextStyle appBarTextStyle =  const TextStyle(
   color: appBarTextColor,
fontSize: 16,
);
ButtonStyle keyboardButtonStyle =  ButtonStyle(
    backgroundColor: MaterialStateProperty.all(buttonBackGroundColor),
    overlayColor: MaterialStateProperty.all(Colors.black12),
    elevation: MaterialStateProperty.all(0),
    shape: MaterialStateProperty.all(const CircleBorder())
   // primary: buttonBackGroundColor,
   // shape: CircleBorder(),
);