import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workzone/mainpages/welcomepage.dart';
class myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return MaterialApp(
   title: 'Work_zone',
   home: welcomepage(),
   debugShowCheckedModeBanner: false,
 );
  }

}