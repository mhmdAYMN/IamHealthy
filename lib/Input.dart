import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iamhealthy/calculate.dart';
import 'package:iamhealthy/result.dart';

class Input extends StatefulWidget {
  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  String Gender;
  int age=18;
  int W=80;
  int line=120;
  bool isman;
  bool iswomen;
  var COLOR =Colors.grey[900];
  var COLOR2 =Colors.grey[900];
  var container_Decor = BoxDecoration(

    color: Colors.grey[900],
    borderRadius: BorderRadius.circular(20.0)
  );
  var T_style=TextStyle(
    color: Colors.white70,
    fontSize: 30.0,

  );
  ///////////////////*******************************/////////////////////******************
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Center(child: Text('BMI Calculator',)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: GestureDetector(
                  onTap: (){isman=true;
                  if(iswomen==true){iswomen=false;COLOR2=Colors.grey[900];}
                    setState(() {
                      Gender='man';
                      COLOR=Colors.grey[800];
                    });
                  },
                  child: Container(decoration: BoxDecoration(color: COLOR,
                      borderRadius: BorderRadius.circular(20.0)),
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Container(
                            height: 50.0,
                            child: Image.asset('man.png'),
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        Text('Man',style: TextStyle(fontWeight: FontWeight.w900,color: Colors.white,fontSize: 30.0),)





                      ],

                    ),




                  ),
                ),
              )),
              Expanded(child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: GestureDetector(
                  onTap: (){
                    iswomen=true;
                    if(isman==true){COLOR=Colors.grey[900];isman=false;}
                    setState(() {
                      Gender='women';
                      COLOR2=Colors.grey[800];
                    });
                  },
                  child: Container(
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Container(
                            height: 50.0,
                            child: Image.asset('Images/women.png'),
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        Text('Women',style: TextStyle(fontWeight: FontWeight.w900,color: Colors.white,fontSize: 30.0),)





                      ],

                    ),
                    decoration: BoxDecoration(
                      color: COLOR2,
                      borderRadius: BorderRadius.circular(20.0)

                      

                    ),




                  ),
                ),
              )),

            ],




          )),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: container_Decor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT',style: T_style),
                  Row( mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(line.toString(), style: TextStyle(fontSize: 45.0,color: Colors.white,fontWeight: FontWeight.w700),),
                      Text('cm',style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.w400),)
                    ],
                  ),
                  SliderTheme(child: Slider(value:line.toDouble() , min: 120,max: 220, onChanged: ( double nvalue){

                    setState(() {line=nvalue.round();

                  });


                  },inactiveColor: Colors.grey,activeColor: Colors.red,),
                    data: SliderTheme.of(context).copyWith(
                       // valueIndicatorColor: Colors.red,

                      thumbColor: Colors.red,
                  ))

                ],
              ),


            ),
          )),
          Expanded(child: Row(
          children: [
            Expanded(child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: container_Decor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Age',style: T_style,),
                    Text(age.toString(),style:TextStyle( fontSize: 45.0,color: Colors.white,fontWeight: FontWeight.w700),),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: FloatingActionButton(onPressed: (){
                            setState(() {
                              age--;
                            });
                          } ,backgroundColor: Colors.grey,
                            child: Icon(Icons.remove),
                            heroTag: null,
                          ),
                        ),
                        Expanded(
                          child: FloatingActionButton(onPressed: (){
                            setState(() {
                              age++;
                            });
                          } ,backgroundColor: Colors.grey,
                            child: Icon(Icons.add),
                            heroTag: null,
                          ),
                        ),
                      ],

                    )


                  ],

                ),




              ),
            )),
            Expanded(child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: container_Decor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Weight',style: T_style,),
                    Text(W.toString(),style: TextStyle(fontSize: 45.0,color: Colors.white,fontWeight: FontWeight.w700),),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: FloatingActionButton(onPressed: (){
                            setState(() {
                              W--;
                            });
                          } ,backgroundColor: Colors.grey,
                            child: Icon(Icons.remove),
                            heroTag: null,
                          ),

                        ),
                        Expanded(
                          child: FloatingActionButton(onPressed: (){

                            setState(() {
                              W++;
                            });
                          } ,backgroundColor: Colors.grey,
                            child: Icon(Icons.add),
                            heroTag: null,
                          ),
                        ),
                      ],

                    )


                  ],

                ),




              ),
            )),

          ],

          )),
          Expanded(flex: -1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(bottomRight:Radius.circular(20.0),bottomLeft:Radius.circular(20.0) )


                ),




                child: MaterialButton(
                  child: Text('Calculate my Bmi', style: TextStyle(color: Colors.white,fontSize: 25.0),),
                  onPressed: (){
                    CALC myobj=CALC(height: line, weight: W);


                    //Navigator.pushNamed(context, 'res');
                  //Navigator.pushNamed(context, 'res');
                    Navigator.push(context, MaterialPageRoute(builder:  (context){
                      myobj.get_EXP();

                      return Result(t1: myobj.get_up(), t2:myobj.get_EXP() , t3: myobj.get_D());
                    }       ));

                  },
                ),





              ))













        ],










      ),




    );
  }
}

