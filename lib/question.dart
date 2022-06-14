// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, empty_constructor_bodies

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questiontext;

  Question(this.questiontext,);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      
      child:Text(
        questiontext,
        style:const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
