import 'package:flutter/material.dart';

import 'login.dart';
class TextFieldclass extends StatefulWidget {
  const TextFieldclass({Key? key}) : super(key: key);

  @override
  _TextFieldclassState createState() => _TextFieldclassState();
}

class _TextFieldclassState extends State<TextFieldclass> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          appBar: AppBar(title: Text('Regetation'), centerTitle: true,),
          body: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                  children: [

                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Fist Name',
                        helperStyle: TextStyle(color: Colors.blueGrey),
                        labelText: 'Fast Name',
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.cyanAccent,
                                width: 5
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.lightBlue,
                              width: 5,
                            )
                        ),
                        fillColor: Colors.white70,
                        filled: true,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Last Name',
                        helperStyle: TextStyle(color: Colors.blueGrey),
                        labelText: 'Last Name',
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.cyanAccent,
                                width: 5
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.lightBlue,
                              width: 5,
                            )
                        ),
                        fillColor: Colors.white70,
                        filled: true,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        helperStyle: TextStyle(color: Colors.blueGrey),
                        labelText: 'Email',
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.cyanAccent,
                              width: 5,
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.lightBlue,
                              width: 5,
                            )
                        ),
                        fillColor: Colors.white70,
                        filled: true,
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Phone No',
                        helperStyle: TextStyle(color: Colors.blueGrey),
                        labelText: 'Phone:',
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.cyanAccent,
                              width: 5,
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.lightBlue,
                              width: 5,
                            )
                        ),
                        fillColor: Colors.white70,
                        filled: true,
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        helperStyle: TextStyle(color: Colors.blueGrey),
                        labelText: 'Password',
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.cyanAccent,
                              width: 5,
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.lightBlue,
                              width: 5,
                            )
                        ),
                        fillColor: Colors.white70,
                        filled: true,
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Confrom Password',
                        helperStyle: TextStyle(color: Colors.blueGrey),
                        labelText: 'Confrom Password',
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.cyanAccent,
                              width: 5,
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.lightBlue,
                              width: 5,
                            )
                        ),
                        fillColor: Colors.white70,
                        filled: true,
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      height: 20,
                    ),
                   GestureDetector(
                     onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => Myapp()));
                     },
                     child:  Container(
                       child: Center(
                         child: Text('Regeter'),
                       ),
                       width: MediaQuery.of(context).size.width/5,
                       height: 30,
                       color: Colors.purpleAccent,

                     ),
                   ),
                  ],
              )
          )
      );
  }
}