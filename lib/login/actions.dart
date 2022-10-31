import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workzone/opinionsORcomplements/viewcomplements.dart';
import 'package:workzone/opinionsORcomplements/viewopinions.dart';

import '../Instructors/addinstructor.dart';
import '../opinionsORcomplements/addadvertisement.dart';
class actions extends StatelessWidget {
  const actions({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 55,bottom: 30),
            child: Image.asset('assets/Asset 4.png',width: 140,height: 145,),
          )
          ,Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Center(
              child: Text('Which action which you want to do ?'),
            ),
          )
          ,Container(
            margin: EdgeInsets.only(left: 60,right: 60,bottom: 15),
            child:ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>addinstructor()));
              },
              child: Text('Add Instructors'),
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>addadvertisement()));
              },
              child: Text('Add advertisement'),
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>viewopinion()));
              },
              child: Text('View opinions'),
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>viewcomplement()));
              },
              child: Text('View complements'),
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
