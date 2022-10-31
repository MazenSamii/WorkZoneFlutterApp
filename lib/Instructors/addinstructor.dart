import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workzone/Instructors/question.dart';
import 'package:workzone/Instructors/questionpage.dart';

import 'instructors.dart';

class addinstructor extends StatelessWidget {
TextEditingController n1 = TextEditingController();
TextEditingController n2 = TextEditingController();
TextEditingController n3 = TextEditingController();
TextEditingController n4 = TextEditingController();
@override
  Widget build(BuildContext context) {
    return Scaffold(
              body: ListView(
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Image.asset('assets/Asset 5.png',width: 180,height: 180,),
                    ),
                  )
                  ,Container(
                    child: Text('Instructor Name',style: TextStyle(color: Colors.black54),),
                    margin: EdgeInsets.only(left: 30,top: 40),
                  )
                  ,Container(
                    decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(20.5)
                    ),
                    margin: EdgeInsets.only(top: 10,left: 30,right: 30),
                    width: 250,
                    height: 50,
                    child: TextField(
                      onChanged: (value){

                      },
                      controller: n1,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          hintText: "     Name..",
                          hintStyle: TextStyle(fontSize:15,color: Colors.grey),
                          border: InputBorder.none
                      ),
                    ),

                  )
                  ,Container(
                    child: Text('Course Name',style: TextStyle(color: Colors.black54),),
                    margin: EdgeInsets.only(left: 30,top: 25),
                  )
                  ,Container(
                    decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(20.5)
                    ),
                    margin: EdgeInsets.only(top: 10,left: 30,right: 30),
                    width: 250,
                    height: 50,
                    child: TextField(
                      onChanged: (value){

                      },
                      controller: n2,
                      decoration: InputDecoration(
                        hintText: "     Course name",
                        hintStyle: TextStyle(fontSize:15,color: Colors.grey),
                        border: InputBorder.none
                    ),
                    ),
                  )
                  ,Container(
                    margin: EdgeInsets.only(top: 40,left: 80,right: 80),
                    width: 100,
                    child: ElevatedButton(
                      onPressed: (){
                        String a= n1.text;
                        String b= n2.text;
                        FirebaseFirestore.instance.collection('Instructors').add(
                            <String,dynamic>{
                              "Instructor name":a,
                              "Course name":b,
                            }
                        );
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>questionpage()));
                      },
                      child: Text('ADD'),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith((states){
                            if(states.contains(MaterialState.pressed)){
                              return Colors.black26;
                            }
                            return Colors.blue[600];
                          }
                          ),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
                          )
                      ),
                    ),
                  )
                ],
              ),
    );
  }
}
