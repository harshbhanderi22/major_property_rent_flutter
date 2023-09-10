import 'package:flutter/material.dart';
import 'package:on_property/utils/colorscheme.dart';


 Container horizontalLine(){
    return   Container(
      height: 5,
      width: 70,
      margin: EdgeInsets.only(top: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: primaryColor),
    );
  }
