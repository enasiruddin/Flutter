import 'package:flutter/material.dart';

class gridclass extends StatefulWidget {
  const gridclass({Key? key}) : super(key: key);

  @override
  _gridclassState createState() => _gridclassState();
}

class _gridclassState extends State<gridclass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
    appBar: AppBar(title: Text('Blog'),
      backgroundColor: Colors.cyanAccent,

    ),

     body: GridView.count(
       crossAxisCount: 3,
          mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,// ignore: prefer_const_constructors

       children: [
         Container(
           width: 100,
           height: 100,
           child: const Center(
           child: Text("I'm a student",
           textDirection: TextDirection.ltr,
           )),
       decoration: BoxDecoration(
         color: Colors.lightGreenAccent,
         borderRadius: BorderRadius.circular(10),
       ),
         ),
         Container(
           width: 100,
           height: 100,
           child: const Center(
               child: Text("I'm a student",
                 textDirection: TextDirection.ltr,
               )),
           decoration: BoxDecoration(
             color: Colors.lightGreenAccent,
             borderRadius: BorderRadius.circular(10),
           ),
         ),
         Container(
           width: 100,
           height: 100,
             child: const Center(
                 child: Text("I'm a student",
                   textDirection: TextDirection.ltr,
                 )),
             decoration: BoxDecoration(
               color: Colors.lightGreenAccent,
               borderRadius: BorderRadius.circular(10),
             )

         ),
         Container(
           width: 100,
           height: 100,
           child: const Center(
               child: Text("I'm a student",
                 textDirection: TextDirection.ltr,
               )),
           decoration: BoxDecoration(
             color: Colors.lightGreenAccent,
             borderRadius: BorderRadius.circular(10),
           ),
         ),
         Container(
           width: 100,
           height: 100,
           child: const Center(
               child: Text("I'm a student",
                 textDirection: TextDirection.ltr,
               )),
           decoration: BoxDecoration(
             color: Colors.lightGreenAccent,
             borderRadius: BorderRadius.circular(10),
           ),
         ),
         Container(
           width: MediaQuery.of(context).size.width,
           height: 100,
           child: const Center(
               child: Text("I'm a student",
                 textDirection: TextDirection.ltr,
               )),
           decoration: BoxDecoration(
             color: Colors.lightGreenAccent,
             borderRadius: BorderRadius.circular(10),
           ),
         ),
         Container(
           width: MediaQuery.of(context).size.width,
           height: 100,
           child: const Center(
               child: Text("I'm a student",
                 textDirection: TextDirection.ltr,
               )),
           decoration: BoxDecoration(
             color: Colors.lightGreenAccent,
             borderRadius: BorderRadius.circular(10),

           ),
         ),
         Container(
           width: MediaQuery.of(context).size.width,
           height: 100,
           child: const Center(
               child: Text("I'm a student",
                 textDirection: TextDirection.ltr,
               )),
           decoration: BoxDecoration(
             color: Colors.lightGreenAccent,
             borderRadius: BorderRadius.circular(10),
           ),
         ),
         Container(
           width: MediaQuery.of(context).size.width,
           height: 100,
           child: const Center(
               child: Text("I'm a student",
                 textDirection: TextDirection.ltr,
               )),
           decoration: BoxDecoration(
             color: Colors.lightGreenAccent,
             borderRadius: BorderRadius.circular(10),
           ),
         ),
         Container(
             width: 100,
             height: 100,
             child: const Center(
                 child: Text("I'm a student",
                   textDirection: TextDirection.ltr,
                 )),
             decoration: BoxDecoration(
               color: Colors.lightGreenAccent,
               borderRadius: BorderRadius.circular(10),
             )

         ),
         Container(
           width: MediaQuery.of(context).size.width,
           height: 100,
           child: const Center(
               child: Text("I'm a student",
                 textDirection: TextDirection.ltr,
               )),
           decoration: BoxDecoration(
             color: Colors.lightGreenAccent,
             borderRadius: BorderRadius.circular(10),
           ),
         ),
         Container(
           width: MediaQuery.of(context).size.width,
           height: 100,
           child: const Center(
               child: Text("I'm a student",
                 textDirection: TextDirection.ltr,
               )),
           decoration: BoxDecoration(
             color: Colors.lightGreenAccent,
             borderRadius: BorderRadius.circular(10),
           ),
         ),
         Container(
           width: MediaQuery.of(context).size.width,
           height: 100,
           child: const Center(
               child: Text("I'm a student",
                 textDirection: TextDirection.ltr,
               )),
           decoration: BoxDecoration(
             color: Colors.lightGreenAccent,
             borderRadius: BorderRadius.circular(10),
           ),
         ),
         Container(
           width: MediaQuery.of(context).size.width,
           height: 100,
           child: const Center(
               child: Text("I'm a student",
                 textDirection: TextDirection.ltr,
               )),
           decoration: BoxDecoration(
             color: Colors.lightGreenAccent,
             borderRadius: BorderRadius.circular(10),
           ),
         ),
         Container(
           width: 100,
           height: 100,
           child: const Center(
               child: Text("I'm a student",
                 textDirection: TextDirection.ltr,
               )),
           decoration: BoxDecoration(
             color: Colors.lightGreenAccent,
             borderRadius: BorderRadius.circular(10),
           ),
         ),
         Container(
           width: MediaQuery.of(context).size.width,
           height: 100,
           child: const Center(
               child: Text("I'm a student",
                 textDirection: TextDirection.ltr,
               )),
           decoration: BoxDecoration(
             color: Colors.lightGreenAccent,
             borderRadius: BorderRadius.circular(10),
           ),
         ),
         Container(
             width: MediaQuery.of(context).size.width,
             height: 100,
             child: const Center(
                 child: Text("I'm a student",
                   textDirection: TextDirection.ltr,
                 )),
             decoration: BoxDecoration(
               color: Colors.lightGreenAccent,
               borderRadius: BorderRadius.circular(10),
             )

         ),
         Container(
           width: MediaQuery.of(context).size.width,
           height: 100,
           child: const Center(
               child: Text("I'm a student",
                 textDirection: TextDirection.ltr,
               )),
           decoration: BoxDecoration(
             color: Colors.lightGreenAccent,
             borderRadius: BorderRadius.circular(10),
           ),
         ),
         Container(
           width: MediaQuery.of(context).size.width,
           height: 100,
           child: const Center(
               child: Text("I'm a student",
                 textDirection: TextDirection.ltr,
               )),
           decoration: BoxDecoration(
             color: Colors.lightGreenAccent,
             borderRadius: BorderRadius.circular(10),
           ),
         ),
         Container(
           width: MediaQuery.of(context).size.width,
           height: 100,
           child: const Center(
               child: Text("I'm a student",
                 textDirection: TextDirection.ltr,
               )),
           decoration: BoxDecoration(
             color: Colors.lightGreenAccent,
             borderRadius: BorderRadius.circular(10),
           ),
         ),
         Container(
           width: MediaQuery.of(context).size.width,
           height: 100,
           child: const Center(
               child: Text("I'm a student",
                 textDirection: TextDirection.ltr,
               )),
           decoration: BoxDecoration(
             color: Colors.lightGreenAccent,
             borderRadius: BorderRadius.circular(10),
           ),
         ),
       ],
     ),
    );
  }
}
