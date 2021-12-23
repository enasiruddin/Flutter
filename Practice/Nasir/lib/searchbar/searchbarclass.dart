import 'package:flutter/material.dart';

class SearchBarClass extends StatefulWidget {
  const SearchBarClass({Key? key}) : super(key: key);

  @override
  _SearchBarClassState createState() => _SearchBarClassState();
}

class _SearchBarClassState extends State<SearchBarClass> {
  List<String> student = [
    "Nasir",
    "Sakil",
    "Sobuj",
    "Nahid",
    "Robiul",
    "Nazma",
    "Topu",
    "Masum",
    "Dion Dunn",
    'Yunus Mccabe',
    'Jadon Sweet',
    'Beatrice Hull',
    'Saxon Waller',
    'Amirah Langley',
  ];
  List<String> searchlist = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    searchlist = student;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Bar"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: 'Search by name...',
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color:Colors.black,
                      width:1
                  )
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color:Colors.black,
                      width:1
                  )
              ),
            ),
            onChanged: (String searchElement){
              setState(() {
                searchlist = student.where((element) => (
                    element.toLowerCase().contains(searchElement.toLowerCase())
                )).toList();
              });
            },
          ),
          Expanded(
              child: Container(
                child: ListView.builder(
                     itemCount: searchlist.length,
                    itemBuilder: (context, index){
                      return Card(
                        child: ListTile(
                          title: Text(searchlist[index]),
                          subtitle: Text('${searchlist[index]} is a good boy'),
                        ),
                      );
                    }

                ),
              )
          )
        ],
      ) ,
       );
    }
  }