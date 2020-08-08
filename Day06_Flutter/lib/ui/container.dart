import 'package:flutter/material.dart';
import 'column.dart';

containerColumn() {
  var col1 = Container(
    width: 300,
    height: 300,
    //color: Colors.blue[300],
    alignment: Alignment.center,
    child: columnHome(),
    decoration: BoxDecoration(
      color: Colors.black,
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
