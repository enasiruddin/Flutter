import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class UrlLancherClass extends StatefulWidget {
  const UrlLancherClass({Key? key}) : super(key: key);

  @override
  _UrlLancherClassState createState() => _UrlLancherClassState();
}

class _UrlLancherClassState extends State<UrlLancherClass> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Url Lancher"),
        centerTitle: true,
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(onPressed: () async =>
            await canLaunch('https://www.facebook.com/')
                ? await launch('https://www.facebook.com/')
                : Container(),
              child: Text("Facebook"),
            ),
            SizedBox(
              height: 50,
            ),
            RaisedButton(onPressed: () async =>
            await canLaunch('mailto: nasir@gmail.com')
                ? await launch('mailto: nasir@gmail.com')
                : Container(),
              child: Text("Mail"),
            ),
            SizedBox(
              height: 50,
            ),
            RaisedButton(onPressed: () async =>
            await canLaunch('tel:01738439104')
                ? await launch('tel:01738439104')
                : Container(),
              child: Text("Phone"),
            ),
            SizedBox(
              height: 50,
            ),
            RaisedButton(onPressed: () async {
              final String encodeURL = Uri.encodeFull(
                  "https://www.google.com/maps/search/?api=1&query=25.134586,89.3831734");

              if (await canLaunch(encodeURL)){
                await launch(encodeURL);
              }
              else{
                Text("Could not Lanch $encodeURL");
              }

            },
              child: Text("Map"),

            ),

          ],
        ),
      ),
    );
  }
}
