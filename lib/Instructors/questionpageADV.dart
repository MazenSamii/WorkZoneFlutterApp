import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workzone/Instructors/question.dart';
import 'package:workzone/login/actions.dart';
import 'package:workzone/opinionsORcomplements/addadvertisement.dart';

class questionpageADV extends StatelessWidget {
  const questionpageADV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: question(addadvertisement(),actions()),
    );
  }
}
