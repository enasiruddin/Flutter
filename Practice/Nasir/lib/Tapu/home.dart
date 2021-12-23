import 'package:flutter/material.dart';
class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'),

      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: Image.asset('asset/a.jpg',

              ),
                accountName: Text('Topu'), 
                accountEmail: Text('tapo@gmail.com')),
            Card(
              color: Colors.grey,
              child: ListTile(
                onTap: (){
                  Navigator.pop(context);
                },
                title: Text('Home'),
                leading: Icon(Icons.home),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
            Card(
              color: Colors.grey,
              child: ListTile(
                onTap: (){
                  Navigator.pop(context);
                },
                focusColor: Colors.cyanAccent,
                title: Text('Messages'),
                leading: Icon(Icons.mail_outline_rounded),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
            Card(
              color: Colors.grey,
              child: ListTile(
                onTap: (){
                  Navigator.pop(context);
                },
                title: Text('Cart'),
                leading: Icon(Icons.shopping_cart),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
            Card(
              color: Colors.grey,
              child: ListTile(
                onTap: (){
                  Navigator.pop(context);
                },
                title: Text('Favorites'),
                leading: Icon(Icons.favorite),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
            Card(
              color: Colors.grey,
              child: ListTile(
                onTap: (){
                  Navigator.pop(context);
                },
                title: Text('Setting'),
                leading: Icon(Icons.settings),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
            Container(
              child: Text('SUPPORT'),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(40)
              ),

            ),
            Card(
              color: Colors.grey,
              child: ListTile(
                onTap: (){
                  Navigator.pop(context);
                },
                title: Text('Contact'),
                leading: Icon(Icons.contact_mail_rounded),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
            Card(
              color: Colors.grey,
              child: ListTile(
                onTap: (){
                  Navigator.pop(context);
                },
                title: Text('Support line'),
                leading: Icon(Icons.support_agent_sharp),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
            Container(
              child: Text('ACCOUNT'),
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(40)
              ),

            ),
            Card(
              color: Colors.grey,
              child: ListTile(
                onTap: (){
                  Navigator.pop(context);
                },
                title: Text('Profile'),
                leading: Icon(Icons.perm_identity_rounded),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
            Card(
              color: Colors.grey,
              child: ListTile(
                onTap: (){
                  Navigator.pop(context);
                },
                title: Text('Logout'),
                leading: Icon(Icons.logout),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
