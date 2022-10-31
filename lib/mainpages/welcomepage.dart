// import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../animation/transition.dart';
import 'homepage.dart';

class welcomepage extends StatefulWidget {
  const welcomepage({Key? key}) : super(key: key);

  @override
  State<welcomepage> createState() => _welcomepageState();
}

class _welcomepageState extends State<welcomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage('assets/workzone.jpg')
          //         ,fit: BoxFit.fill
          //   )
          // ),
          child:ListView(
            children: [
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Lottie.network('https://assets4.lottiefiles.com/packages/lf20_8zzltjyc.json'),
              )
              ,Container(
                margin: EdgeInsets.only(top: 15),
                child: Image.asset('assets/Asset 5.png',width: 100,height: 100,),
              )
              ,Container(
                margin: EdgeInsets.only(top:33,left: 60,right: 60),
                child:ElevatedButton(
                  onPressed: () {
                        Navigator.of(context).push(transition(page:homepage()));
                  },
                  child: Text('Next',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith((states) {
                        if (states.contains(MaterialState.pressed)) {
                           return Colors.black26;
                        }
                        return Colors.blue[700];
                      }
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)
                          )
                      )
                  ),
                ),
              )
            ],
          )
        )
    );
  }
}

