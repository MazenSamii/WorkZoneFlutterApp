import 'package:flutter/cupertino.dart';
class transition extends PageRouteBuilder{
  final page;
  transition({this.page})
      : super(
      pageBuilder: (context,animation,animationtwo)=>page,
      transitionsBuilder: (context,animation,animationtwo,child){
        var begin=Offset(0.0,-1.0);
        var end=Offset(0.0,0.0);
        var tween = Tween(begin:begin,end:end);
        var offsetAnimation=animation.drive(tween);
        return SlideTransition(position: offsetAnimation,child: child,);
      }
  );

}
