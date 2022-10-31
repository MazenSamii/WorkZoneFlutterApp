import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class viewcomplement extends StatelessWidget{
  int x=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: FirebaseFirestore.instance.collection('Complements').get(),
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
                           child:Text('Complement:  '),
                          )
                        )
                        ,Container(
                          child:Center(
                            child:Text(x.data.docs[index]['Complement']),
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