import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:workzone/mainpages/homepage.dart';
class workzonemap extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Work Zone Location',style: TextStyle(fontWeight:FontWeight.w200),),backgroundColor: Colors.blue[800],),
      body:
      GoogleMap(
        onMapCreated: (x){

        },
        initialCameraPosition: CameraPosition(
          target: LatLng(30.3593519,30.5327214)
          ,zoom: 12.5,

        ),
        markers: {
          Marker(
              markerId:MarkerId('1'),
              position:LatLng(30.363557634894633, 30.50999126478388)
              ,infoWindow: InfoWindow(
              title:('Hey'),
              snippet: ('Work Zone')
              ,onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>homepage()));
          }
          )
          )
        },

      ),
    );
  }

}