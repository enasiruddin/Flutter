import 'package:flutter/material.dart';
class Options extends StatelessWidget {
  final randomOptions;
   final Function _answerChoosenHandler;
   Options(this.randomOptions, this._answerChoosenHandler);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GridView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5
        ),
        itemCount: 4,
        itemBuilder: (context, index){
          return InkWell(
            onTap: (){
              _answerChoosenHandler(randomOptions[index]);
            },
            child: Card(
              elevation: 10,
              color: Theme.of(context).primaryColor,
              child: Container(
                alignment: Alignment.center,
                child: Text("${randomOptions[index]}", style: TextStyle(fontSize: size.width*0.08, color: Colors.white),),
              ),
            ),
          );
        });
  }
}