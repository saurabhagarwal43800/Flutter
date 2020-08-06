import 'package:flutter/material.dart';
import 'package:second_app/ui/text.dart';
import 'column.dart';
import 'image.dart';

containerHome() {
  var con1 = Container(
    width: 300,
    height: 300,
    //color: Colors.blue[300],
    alignment: Alignment.bottomCenter,
    child: containerText(),
    decoration: BoxDecoration(
        image: truck(),
        color: Colors.amber[300],
        //shape: BoxShape.circle,
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          width: 5,
          color: Colors.black,
        )),
  );
  return con1;
}

containerColumn() {
  var col1 = Container(
    width: 300,
    height: 300,
    //color: Colors.blue[300],
    alignment: Alignment.bottomCenter,
    child: columnHome(),
    decoration: BoxDecoration(
      color: Colors.amberAccent[100],
      //shape: BoxShape.circle,
      borderRadius: BorderRadius.circular(20.0),
      border: Border.all(
        width: 5,
        color: Colors.black,
      ),
    ),
  );
  return col1;
}
