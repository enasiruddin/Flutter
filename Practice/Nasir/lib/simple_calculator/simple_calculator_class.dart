import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class SimpleCalculatorClass extends StatefulWidget {
  const SimpleCalculatorClass({Key? key}) : super(key: key);

  @override
  _SimpleCalculatorClassState createState() => _SimpleCalculatorClassState();
}

class _SimpleCalculatorClassState extends State<SimpleCalculatorClass> {
  String equation = "0";
  String result = "0";
  String expression = '';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator") ,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.05, vertical: size.height * 0.03,
            ),
            alignment: Alignment.centerRight,
            color: Colors.red,
            child: Text(
                equation,
              style: TextStyle(fontSize: size.height*0.05,),
              maxLines: 1,
            ),
            ),
          Divider(),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.05, vertical: size.height * 0.03,
            ),
            alignment: Alignment.centerRight,
            color: Colors.red,
            child: Text(
              result,
              style: TextStyle(fontSize: size.height*0.05,),
            ),
          ),
          Divider(),
          Row(
            children: [
              Container(
                width: size.width*0.75,
                child: Table(
                  children: [
                    TableRow(
                      children: [
                        buildBtn("C",1.0,Colors.red,Colors.white),
                        buildBtn("AC",1.0,Colors.blue,Colors.white),
                        buildBtn("÷",1.0,Colors.green,Colors.white),
                      ]
                    ),
                    TableRow(
                        children: [
                          buildBtn("7",1.0,Colors.red,Colors.white),
                          buildBtn("8",1.0,Colors.blue,Colors.white),
                          buildBtn("9",1.0,Colors.green,Colors.white),
                        ]
                    ),
                    TableRow(
                        children: [
                          buildBtn("4",1.0,Colors.red,Colors.white),
                          buildBtn("5",1.0,Colors.blue,Colors.white),
                          buildBtn("6",1.0,Colors.green,Colors.white),
                        ]
                    ),
                    TableRow(
                        children: [
                          buildBtn("1",1.0,Colors.red,Colors.white),
                          buildBtn("2",1.0,Colors.blue,Colors.white),
                          buildBtn("3",1.0,Colors.green,Colors.white),
                        ]
                    ),
                    TableRow(
                        children: [
                          buildBtn("0",1.0,Colors.red,Colors.white),
                          buildBtn("00",1.0,Colors.blue,Colors.white),
                          buildBtn(".",1.0,Colors.green,Colors.white),
                        ]
                    ),

                  ],
                ),
              ),
              Container(
                width: size.width*0.25,
                child: Table(
                  children: [
                    TableRow(
                      children: [
                        buildBtn("X", 1.0, Colors.blue, Colors.white),
                      ]
                    ),
                    TableRow(
                        children: [
                          buildBtn("+", 1.0, Colors.blue, Colors.white),
                        ]
                    ),
                    TableRow(
                        children: [
                          buildBtn("-", 1.0, Colors.blue, Colors.white),
                        ]
                    ),
                    TableRow(
                        children: [
                          buildBtn("=", 2.0, Colors.blue, Colors.white),
                        ]
                    ),
                  ],
                ),
              )
            ],
          )

        ],
      )
    );
  }
  Widget buildBtn( String btnText, double btnHeight, Color btnColor, Color btnTextColor){
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height*0.1*btnHeight,
       margin: EdgeInsets.symmetric(horizontal: size.width*0.002, vertical: size.height*0.002),
      decoration: BoxDecoration(
        color: btnColor,
        borderRadius: BorderRadius.circular(size.height*0.1),
      ),
      child: FlatButton(
        onPressed: (){
          setState(() {
            if(btnText=='C'){
              equation = "0";
              result = "0";
            }else if(btnText=='AC'){
              equation= equation.substring(0, equation.length-1);
              if(equation==""){
                equation="0";
              }
            }else if(btnText=='=') {
              expression = equation;
              expression= expression.replaceAll('÷', '/');
              expression= expression.replaceAll('X', '*');
              try{
                Parser p = Parser();
                Expression exp = p.parse(expression);
                ContextModel cm = ContextModel();
                result = '${exp.evaluate(EvaluationType.REAL, cm)}';

              }catch(error){
                result='error';
                print(error);
              }

            }else{
              if(equation=="0"){
                equation=btnText;
              }
              else{
                equation = equation+btnText;
              }
            }
          });
        },
        child: Text(btnText,style: TextStyle(fontSize: size.height*0.05, color: btnTextColor),),
      ),
    );
  }
}
