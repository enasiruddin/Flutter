import 'package:flutter/material.dart';
class Grid extends StatefulWidget {
  const Grid({Key? key}) : super(key: key);

  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<Grid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gridview' ),
      ),
    body: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 200,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 5/5,
    ),
        itemCount: 8,
        itemBuilder: (context,index){
        return Container(
          child: Center(

            child: Text('Topu'),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            image: DecorationImage(
              image: AssetImage('asset/a.jpg'),
            ),
            
            color: Colors.deepPurpleAccent,
          ),
        );
    },
    )
    );
  }
}
