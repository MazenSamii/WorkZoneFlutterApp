import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';
import 'instructors.dart';
class instructorsdesign extends StatelessWidget{
  String x= 'xxxxxxxxx';
  String y= 'xxxxxxxxx';
  String z= 'xxxxxxxx';
  dynamic a;
  dynamic b;
  dynamic c;
  instructorsdesign(this.x,this.y,this.z,this.a,this.b,this.c);
  @override
  Widget build(BuildContext context) {
   return
     Container(
       child: ListView(
         children: [

           // ,Icon(Icons.person_pin,size: 120,)
           Lottie.network('https://assets5.lottiefiles.com/packages/lf20_xmkgn4jj.json',width: 130,height: 130)
           ,Container(
             child:Center(
               child:Text(x,style: TextStyle(fontSize: 12),),
             )
             ,margin: EdgeInsets.only(top: 10),
           )
           ,Container(
               child:Center(
                 child:Text(y,style: TextStyle(fontSize: 12),),
               )
                   ,margin: EdgeInsets.only(top: 15),
           )
           ,Container(
             child:Center(
               child:Text(z,style: TextStyle(fontSize: 12),),
             )
             ,margin: EdgeInsets.only(top: 15),
           )
           ,Center(
             child: Container(
               child: Row(
                 children: [
                   IconButton(
                       onPressed:(){
                    launch(a);
                   },
                       icon: Icon(Icons.wifi_calling_sharp,size: 25,)
                       ,color: Colors.green,
                   )
                   ,Container(
                     width: 15,
                   )
                   ,IconButton(
                       onPressed:(){
                         launch(b);
                       },
                       icon: Icon(Icons.facebook,size: 25,)
                       ,color: Colors.blue,
                   )
                   ,Container(
                     width: 15,
                   )
                   ,IconButton(
                       onPressed:(){
                      FlutterPhoneDirectCaller.callNumber(c);
                       },
                       icon: Icon(Icons.call,size: 25,)
                   )
                 ],
               ),
               margin: EdgeInsets.only(left: 65,top: 5),
             ),
           )
           ,Container(
             margin: EdgeInsets.only(right: 170,top: 0),
             child:TextButton(
               onPressed:(){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>instructorspage()));
               },
               child:Text('View All.!',style: TextStyle(fontSize: 10),)
           )
           )

         ],
       ),
     );

  }
}