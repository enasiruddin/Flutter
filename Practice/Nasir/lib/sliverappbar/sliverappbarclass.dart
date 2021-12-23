import 'package:flutter/material.dart';

class SliverAppBarClass extends StatefulWidget {
  const SliverAppBarClass({Key? key}) : super(key: key);

  @override
  _SliverAppBarClassState createState() => _SliverAppBarClassState();
}

class _SliverAppBarClassState extends State<SliverAppBarClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
           flexibleSpace: FlexibleSpaceBar(
             title: Text("SliverAppBar"),
           ),
          )
        ],
      ),
    );
  }
}
