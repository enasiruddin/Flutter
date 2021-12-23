import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class Belgium extends StatefulWidget {
  const Belgium({Key? key}) : super(key: key);

  @override
  _BelgiumState createState() => _BelgiumState();
}

class _BelgiumState extends State<Belgium> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            Image.asset('asset/a.jpg',
            width: 200,
              height: 200,
            ),
            SizedBox(
              width: 200,
              height: 25,
            ),
            Container(
              width: 300,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(40)
              ),
                child: SingleChildScrollView(

                  child: Column(
                    children: [
                      ListTile(title: Center(child: Text('Beldium')),),
                      Divider(),
                      ListTile(
                        title: Text('tapu '),
                        subtitle: Text('Debnath',),
                        selected: true,
                        leading: Icon(Icons.headset_outlined,color: Colors.white,),
                      ),
                      ListTile(
                        title: Text('tapu '),
                        subtitle: Text('Debnath',),
                        selected: true,
                        leading: Icon(Icons.signal_cellular_connected_no_internet_0_bar,color: Colors.white,),
                      ),
                      ListTile(
                        title: Text('tapu '),
                        subtitle: Text('Debnath',),
                        selected: true,
                        leading: Icon(Icons.home,color: Colors.white,),
                      ),
                      ListTile(
                        title: Text('tapu '),
                        subtitle: Text('Debnath',),
                        selected: true,
                        leading: Icon(Icons.home,color: Colors.white,),
                      ),



                    ],

                    ),
                ),
                ),

          ],
        ),

      ),

      );
  }
}
