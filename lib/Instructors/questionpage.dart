import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workzone/Instructors/addinstructor.dart';
import 'package:workzone/Instructors/question.dart';
import 'package:workzone/login/actions.dart';

class questionpage extends StatelessWidget {
  const questionpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:question(addinstructor(),actions())
    );
  }
}
