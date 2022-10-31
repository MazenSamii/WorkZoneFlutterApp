import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

import 'map.dart';

class contactus extends StatelessWidget {
  const contactus({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          // color: Colors.black,
          decoration: BoxDecoration(
              color: Colors.black,
            image: DecorationImage(
              image: AssetImage('assets/workzone.jpg')
                ,fit: BoxFit.fill
                ,opacity: 200
            )
          ),
          child:ListView(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                child:Image.asset('assets/Asset 2.png',width: 120,height: 120,),
              )
              ,Container(
                child: Icon(Icons.handshake_outlined,size: 100 ,color: Colors.white,),
                margin: EdgeInsets.only(top: 50),
              )
              ,Container(
                margin: EdgeInsets.only(left: 15,top: 10),
                child: Row(
                  children: [
                    Container(
                      child:Text('Facebook',style: TextStyle(fontSize: 17,color: Colors.white),)
                      ,margin: EdgeInsets.only(right: 15),
                    )
                    ,IconButton(
                      onPressed: (){
                        launch('https://www.facebook.com/WorkZoneOfficial');
                      },
                      icon:Icon(Icons.facebook,size: 30,)
                      ,color: Colors.blue,
                    )
                  ],
                ),
              )
              ,Container(
                margin: EdgeInsets.only(left: 15,top: 10),
                child: Row(
                  children: [
                    Container(
                      child:Text('Watsapp',style: TextStyle(fontSize: 17,color: Colors.white),)
                      ,margin: EdgeInsets.only(right: 22),
                    )
                    ,IconButton(
                      onPressed: (){
                        launch("http://wa.me/201010585086");
                      },
                      icon:Icon(Icons.wifi_calling_3_outlined,size: 30,)
                      ,color: Colors.green,
                    )
                  ],
                ),
              )
              ,Container(
                margin: EdgeInsets.only(left: 15,top: 10),
                child: Row(
                  children: [
                    Container(
                      child:Text('Direct call',style: TextStyle(fontSize: 17,color: Colors.white),)
                      ,margin: EdgeInsets.only(right: 15),
                    )
                    ,IconButton(
                        onPressed: (){
                          FlutterPhoneDirectCaller.callNumber('01010585086');
                        },
                        icon:Icon(Icons.call,size: 30,)
                        ,color: Colors.white,
                    )
                  ],
                ),
              )
              ,Container(
                height: 1,
                color: Colors.white,
                margin: EdgeInsets.only(left: 40,right: 40,top: 10),
              )
              ,Container(
                margin: EdgeInsets.only(top: 13),
                child: Center(
                  child: Text('Find us',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.white),),
                ),
              )
              ,Container(
                  child:Row(
                    children: [
                      Container(
                        child:Image.asset('assets/Asset 4.png',width: 70,height: 70,)
                        ,margin: EdgeInsets.only(left: 20,right: 53),
                      )
                      ,IconButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>workzonemap()));
                        },
                        icon: Icon(Icons.location_pin,size: 50,),
                        color: Colors.red,
                      ),
                    ],
                  )
              )
            ],
          ),
        )

    );
  }
}
