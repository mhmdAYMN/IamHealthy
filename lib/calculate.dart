import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'main.dart';
class CALC {



  int height;
  int weight;
  int v;
  CALC({
   @required  this.height,   @required  this.weight
});

  String get_EXP(){
    double v3= weight/(pow(height/100, 2));
    v=v3.round();
    String v1=v.toString();
    return v1;

  }
  String get_D(){
    if (v>25){return 'you should go to GYM you are FAT';}
    else if (v<18) {return 'you are very thin you should eat more';}
    else {return 'you are very healthy ';}



  }
  String get_up(){
    if (v>25){return 'Over Weight';}
    else if (v<18) {return 'Under Weight';}
    else {return 'Normal';}



  }










}