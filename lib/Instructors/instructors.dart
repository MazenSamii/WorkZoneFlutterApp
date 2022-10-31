import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';
class instructorspage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
          future: FirebaseFirestore.instance.collection('Instructors').get(),
          builder: (context,AsyncSnapshot x){
            if(x.hasData==false){
              return Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 200,left: 10,bottom: 5),
                    child: Row(
                      children: [
                        Text('Loading..Please check your internet conection',style: TextStyle(fontSize: 13),)
                        ,Icon(Icons.downloading_rounded)
                      ],
                    ),
                  )
                  ,Text('No Data')
                ],
              );
            }
            else{
              return ListView.builder(
                itemCount: x.data.docs.length,
                itemBuilder: (context,index){
                  return Container(
                    margin: EdgeInsets.only(left: 40,right: 40,top: 5,bottom: 15),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(20.5)
                    ),
                      height: 360,
                      child:Column(
                        children: [
                          Container(
                            height: 20,
                          )
                          ,Container(
                              child:Center(
                                child:Lottie.network('https://assets5.lottiefiles.com/packages/lf20_xmkgn4jj.json',width: 150,height: 150)
                              )
                          )
                          ,Container(
                            margin: EdgeInsets.only(top: 10),
                                child:Center(
                                  child:Text(x.data.docs[index]['Instructor name']),
                                )
                          )
                          ,Container(
                            margin: EdgeInsets.only(bottom: 15,top: 15),
                              child:Center(
                                child:Text(x.data.docs[index]['Course name']),
                              )
                          )
                          ,Container(
                            height: 0.5,
                            color: Colors.black,
                            margin: EdgeInsets.only(left: 80,right: 80,bottom: 15),
                          )
                          ,Container(
                            child: Center(
                              child: Text('Contact us'),
                            ),
                          )
                          ,Container(
                            margin: EdgeInsets.only(left: 60,right: 50,top: 5),
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: (){
                                      launch("http://wa.me/201010585086");
                                    },
                                    icon:Icon(Icons.wifi_calling_3_outlined,color: Colors.green,size: 30,)
                                )
                                ,Container(
                                  width: 10,
                                )
                                ,IconButton(
                                    onPressed: (){
                                      launch('https://www.facebook.com/WorkZoneOfficial');
                                    },
                                    icon:Icon(Icons.facebook,color: Colors.blue,size: 30,)
                                )
                                ,Container(
                                  width: 10,
                                )
                                ,IconButton(
                                    onPressed: (){
                                      FlutterPhoneDirectCaller.callNumber('01010585086');
                                    },
                                    icon:Icon(Icons.call,color: Colors.black,size: 30,)
                                )
                              ],
                            ),
                          )
                        ],
                      )
                  );
                },
              );
            }
          },
        )
    );
  }

}