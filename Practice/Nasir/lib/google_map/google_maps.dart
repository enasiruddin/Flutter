import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapsClass extends StatefulWidget {
  const GoogleMapsClass({Key? key}) : super(key: key);

  @override
  _GoogleMapsClassState createState() => _GoogleMapsClassState();
}

class _GoogleMapsClassState extends State<GoogleMapsClass> {
  Set<Marker> _markers = {};

 void _onMapCreated(GoogleMapController controller){

    setState(() {
     _markers.add(Marker(
         markerId: MarkerId('0'),
         position: LatLng(24.8198198, 89.3701066),
         infoWindow: InfoWindow(title: 'Bogra', snippet: 'this is snipet')
     ));
   });
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("google maps"),
        centerTitle: true,
      ),
      body: GoogleMap(
          onMapCreated: _onMapCreated,
          markers: _markers,
          initialCameraPosition: CameraPosition(
          target: LatLng(24.8198198,89.3701066),
          zoom: 15,
        ),

      )
    );
  }
}
