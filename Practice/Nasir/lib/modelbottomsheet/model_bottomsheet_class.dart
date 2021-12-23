import 'package:flutter/material.dart';
class ModalBottomsheetClass extends StatefulWidget {
  const ModalBottomsheetClass({Key? key}) : super(key: key);

  @override
  _ModalBottomsheetClassState createState() => _ModalBottomsheetClassState();
}

class _ModalBottomsheetClassState extends State<ModalBottomsheetClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Modal Bottom Sheet')),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index){
            return Card(
              child: ListTile(
                title: Text('Nasir Vai'),
                subtitle: Text('Nasir Vai is a good boy'),
                leading: Icon(Icons.home),
                trailing: Icon(Icons.phone),
                onTap: (){
                  showModalBottomSheet(
                      context: context,
                      backgroundColor: Theme.of(context).backgroundColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        )
                      ),
                      constraints: BoxConstraints(
                        maxHeight: 800,
                        maxWidth: double.infinity,
                      ),

                      builder: (BuildContext context){
                        return Column(
                          children: [
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                ),
                                color: Theme.of(context).primaryColor,
                              ),
                              child: IconButton(
                                  icon: Icon(Icons.clear),
                                  onPressed: (){
                                    Navigator.pop(context);
                                },
                              ),
                            ),
                            Expanded(
                              child: GridView.builder(
                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisSpacing: 10,
                                      crossAxisSpacing: 10,
                                      crossAxisCount: 3),
                                  itemCount: 5,
                                  itemBuilder: (context, index){
                                    return Container(
                                      color: Theme.of(context).primaryColor,
                                      child: Column(
                                        children: [
                                          Text('Nasir vai'),
                                          Text('Nasir vai'),
                                          Text('Nasir vai'),
                                        ],
                                      ) ,
                                    );
                                  }
                              ),
                            )
                          ],
                        );
                      }
                  );
                },
              ),
            );
          }
      ),
    );
  }
}
