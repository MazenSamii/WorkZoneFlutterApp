import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../Instructors/questionpageADV.dart';
class addadvertisement extends StatelessWidget {
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
                      margin: EdgeInsets.only(top: 80,),
                      child:Center(
                          child:Lottie.network('https://assets5.lottiefiles.com/packages/lf20_pms7gseb.json')
                      )
                  )
                  ,Container(
                    margin: EdgeInsets.only(top: 80),
                      child:Center(child:Text('Adding advertisement',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),),)
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
                          hintText: "     Add your advertisement Here..",
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
                        FirebaseFirestore.instance.collection("advertisements").add(
                            <String,dynamic>{
                              "advertisement":a,
                            }
                        );
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>questionpageADV()));
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
