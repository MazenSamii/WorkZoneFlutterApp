import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:workzone/login/registerpage.dart';

import '../Instructors/addinstructor.dart';
import 'actions.dart';

class loginpagedesign extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return
  Container(
    color: Colors.blue,
    child: ListView(
      children: [
        // Container(
        //   child: Text('LOGIN',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 30),),
        //   margin: EdgeInsets.only(top: 55,left: 130,right: 50),
        // )
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Lottie.network('https://assets5.lottiefiles.com/packages/lf20_mjlh3hcy.json',height: 150,width: 150),
        )
        ,Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.5)),
          width: 200,
          height: 350,
          margin: EdgeInsets.only(left: 30,right: 30,top: 5),
          child: Column(
            children: [
              Container(
                // child: Lottie.network('https://assets5.lottiefiles.com/packages/lf20_mjlh3hcy.json',height: 50,width: 50),
              )
              ,Container(
                child: Text('E-Mail/Phone',style: TextStyle(color: Colors.black54),),
                margin: EdgeInsets.only(right: 140,top: 40),
              )
              ,Container(
                decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(20.5)
                ),
                margin: EdgeInsets.only(top: 10),
                width: 250,
                height: 50,
                child: TextField(
                  onChanged: (value){

                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "     User Name",
                      hintStyle: TextStyle(fontSize:15,color: Colors.grey),
                      border: InputBorder.none
                  ),
                ),

              )
              ,Container(
                child: Text('Password',style: TextStyle(color: Colors.black54),),
                margin: EdgeInsets.only(right: 150,top: 30),
              )
              ,Container(
                decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(20.5)
                ),
                margin: EdgeInsets.only(top: 10),
                width: 250,
                height: 50,
                child: TextField(
                  onChanged: (value){

                  },
                  // keyboardType: TextInputType.emailAddress,
                  obscureText: true
                  ,decoration: InputDecoration(
                      hintText: "     Password",
                      hintStyle: TextStyle(fontSize:15,color: Colors.grey),
                      border: InputBorder.none
                      ,suffixIcon:Icon(Icons.remove_red_eye)
                  ),
                ),
              )
              ,Container(
                margin: EdgeInsets.only(top: 40),
                width: 100,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>actions()));
                  },
                  child: Text('LOGIN'),
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
        )
        ,Container(
          child:Center(
            child:Text('Creat account..!'),
          )
          ,margin: EdgeInsets.only(top: 17),
        )
        ,Container(
          margin: EdgeInsets.only(top: 10,left: 70,right: 70),
          child: ElevatedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>registerpage()));
          },
          child: Text('RIGESTER',style: TextStyle(color: Colors.blue),),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states){
                if(states.contains(MaterialState.pressed)){
                  return Colors.black26;
                }
                return Colors.white;
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