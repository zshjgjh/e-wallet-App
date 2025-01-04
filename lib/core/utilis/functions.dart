import 'package:flutter/material.dart';
import 'package:uipractice/core/utilis/styles.dart';

getTextStyle(context,{required bool isActive}){
  if(isActive==true){
    return Styles.bold16(context);
  }else{
    return Styles.regular16(context);
  }
}