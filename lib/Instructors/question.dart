import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workzone/Instructors/addinstructor.dart';
import 'package:workzone/mainpages/homepage.dart';

class question extends StatelessWidget {
dynamic x;
dynamic y;
question(this.x,this.y);
@override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 90),
            child: Image.asset('assets/Asset 4.png',width: 130,height: 130,),
          )
          ,Container(
            margin: EdgeInsets.only(top: 70,bottom: 20 ),
            child: Center(
              child: Text('Done..!',style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.w700),),
            ),
          )
          ,Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Center(
              child: Text('Do You want to add another one ?'),
            ),
          )
          ,Container(
            margin: EdgeInsets.only(left: 60,right: 60,bottom: 15),
            child:ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>x));
              },
              child: Text('Yes'),
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
          ,Container(
            margin: EdgeInsets.only(left: 60,right: 60,bottom: 15),
            child:ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>y));
              },
              child: Text('No'),
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
      );
  }
}
