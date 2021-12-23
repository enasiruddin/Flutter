import 'package:flutter/material.dart';
class gapr extends StatefulWidget {
  const gapr({Key? key}) : super(key: key);

  @override
  _gaprState createState() => _gaprState();
}

class _gaprState extends State<gapr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card'),
      ),
      body: Card(
          color: Colors.blue,
        elevation: 2,
        borderOnForeground: true,
        clipBehavior: Clip.antiAlias,
        semanticContainer: true,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 100,
              width: 200,
              child: Center(
                child: Text('king'),
              ),
            )

          ],
        ),
        ),
        );


  }
}
