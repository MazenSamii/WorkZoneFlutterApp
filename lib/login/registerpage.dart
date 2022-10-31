
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workzone/login/login.dart';
class registerpage extends StatefulWidget{
  @override
  State<registerpage> createState() => _registerpageState();
}
class _registerpageState extends State<registerpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Creating new account',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300),),
        backgroundColor: Colors.blue[600],
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            child:Image.asset('assets/Asset 5.png',width: 200,height: 200,),
          )
          ,Container(
            child: Text('Username',style: TextStyle(fontWeight: FontWeight.w300),),
            margin: EdgeInsets.only(top: 30,left: 40),
          )
          ,Container(
            decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(15.5)
            ),
            margin: EdgeInsets.only(top: 10,left: 40,right: 40),
            width: 230,
            height: 50,
            child: TextField(
              // controller: _emailTextController,
              onChanged: (value){

              },
              decoration: InputDecoration(
                  hintText: "Enter Your Username",
                  prefixIcon: Icon(Icons.done_all),
                  hintStyle: TextStyle(fontSize:15,color: Colors.grey),
                  border: InputBorder.none
              ),
            ),
          )
          , Container(
            child: Text('Password',style: TextStyle(fontWeight: FontWeight.w300),),
            margin: EdgeInsets.only(top: 18,left: 40),
          )
          ,Container(
            decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(15.5)
            ),
            margin: EdgeInsets.only(top: 10,left: 40,right: 40),
            width: 230,
            height: 50,
            child: TextField(
              onChanged: (value){

              },
              // controller: _passwordTextController,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "     Enter Your Paswword",
                  hintStyle: TextStyle(fontSize:15,color: Colors.grey),
                  border: InputBorder.none
                  // ,prefixIcon: Icon(Icons.remove_red_eye),
                  ,suffixIcon:Icon(Icons.remove_red_eye)
              ),
            ),
          )

          ,GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue[600],
                  borderRadius: BorderRadius.circular(20.5)
              ),
              width: 100,
              height: 40,
              margin: EdgeInsets.only(top: 40,left: 40,right: 150,bottom: 15),
              child: Center(
                child: Text('SUBMIT',style: TextStyle(color: Colors.white,fontSize: 15),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
