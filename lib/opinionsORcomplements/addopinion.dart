import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../mainpages/homepage.dart';

class addopinion extends StatelessWidget {
TextEditingController n1 = TextEditingController();
@override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 0,),
                    child:Center(
                        child:Lottie.network('https://assets2.lottiefiles.com/packages/lf20_o18imdcr.json')
                    )
                )
                ,Container(
                    child:Center(child:Text('Add your opinion',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),),)
                )
                ,Container(
                  margin: EdgeInsets.only(left: 40,right: 40,top: 50),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20.5)
                  ),
                  child: TextField(
                    controller: n1,
                    decoration: InputDecoration(
                        hintText: "     Add your opinion Here..",
                        hintStyle: TextStyle(fontSize:15,color: Colors.white54),
                        border: InputBorder.none
                    ),
                  ),
                )
                ,Container(
                  width: 130,
                  child: ElevatedButton(
                    onPressed: (){
                      String a =n1.text;
                      FirebaseFirestore.instance.collection("opinions").add(
                          <String,dynamic>{
                            "opinion":a,
                          }
                      );
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>homepage()));
                    },
                    child: Text('Done.!'),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith((states){
                          if(states.contains(MaterialState.pressed)){
                            return Colors.black26;
                          }
                          return Colors.blue[900];
                        }
                        ),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
                        )
                    ),
                  ),
                  margin: EdgeInsets.only(right:150,top: 20),
                )
              ],
            ) ,
          )
        ],
      )
    );
  }
}