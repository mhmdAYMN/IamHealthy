import 'package:flutter/material.dart';


class Result extends StatelessWidget {
  String t1;
  String t2;
  String t3;
  var C;

  Result({@required this.t1,@required this.t2,@required this.t3});
  void c(){
    if (t1=='Normal')C=Colors.green;
    else C=Colors.red;
  }
  @override
  Widget build(BuildContext context) {
    c();
    return Scaffold(
         appBar: AppBar(
           title: Center(child: Text('Your BMi')),
         ),
         body: Center(
           child: Column(

             children: [
               SizedBox(height: 150.0),
               Text('$t1', style: TextStyle(
                 fontSize: 40.0,
                 fontWeight: FontWeight.w600,
                 color:C,


               ),),
               SizedBox(height: 90.0),

               Text('$t2', style: TextStyle(
                 fontSize: 90.0,
                 fontWeight: FontWeight.w800,
                 color: Colors.white,


               ),),
               SizedBox(height: 80.0,)      ,
               Flexible(
                 child: Text('$t3', style: TextStyle(
                   fontSize: 20.0,
                   fontWeight: FontWeight.w400,
                   color: Colors.blueGrey,


                 ),),
               ),


             ],
           ),
         ),








    );
  }
}
