import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class viewopinion extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:FutureBuilder(
          future: FirebaseFirestore.instance.collection('opinions').get(),
          builder: (context,AsyncSnapshot snapshot){
            if(snapshot.hasData==false){
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
                itemCount: snapshot.data.docs.length,
                itemBuilder: (context,index){
                  return Container(
                      child:Column(
                        children: [
                          Container(
                            height: 20,
                          )
                          ,Container(
                            child:Center(
                              child:Image.asset('assets/Asset 5.png',width: 100,height: 100,),
                            )
                          )
                          ,Container(
                            child:Center(
                              child:Text('opinion:  '),
                            )
                          )
                          ,Container(
                            child:Center(
                             child:Text(snapshot.data.docs[index]['opinion']) ,
                            )
                          )
                          ,Container(
                            height: 20,
                          )
                          ,Container(
                            color: Colors.black,
                            height: 0.5,
                            margin: EdgeInsets.only(left: 45,right: 45),
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