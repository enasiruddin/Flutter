import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carosel_Slider extends StatefulWidget {
  const Carosel_Slider({Key? key}) : super(key: key);

  @override
  _Carosel_SliderState createState() => _Carosel_SliderState();
}

class _Carosel_SliderState extends State<Carosel_Slider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carosel Slider"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          CarouselSlider(
            items: [
        Image.network('https://upload.wikimedia.org/wikipedia/commons/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg'),
        Image.network('https://upload.wikimedia.org/wikipedia/commons/2/2f/Culinary_fruits_front_view.jpg'),
        Image.network('https://upload.wikimedia.org/wikipedia/commons/3/32/Pepperseggplants.jpg'),

          ],
            // options: CarouselOptions(
            //   height: 200,
            //   enlargeCenterPage: true,
            //   autoPlay: true,
            //   aspectRatio: 16/9,
            //   autoPlayCurve: Curves.elasticIn,
            //   enableInfiniteScroll: true,
            //   autoPlayAnimationDuration: Duration(milliseconds: 1000),
            //   viewportFraction: 0.8,
            //   reverse: true,
            options: CarouselOptions(
            initialPage: 0,
            height: 180.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16/9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 1200),
            viewportFraction: 0.8,


            ),
          )

        ],
      ),
    );
  }
}
