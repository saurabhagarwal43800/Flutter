import 'package:flutter/material.dart';

text1() {
  var myText = Align(
    child: Text(
      "Indian Transport Company",
      style: TextStyle(
        color: Colors.redAccent[700],
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),
    alignment: Alignment.topCenter,
  );
  return myText;
}

containerText() {
  var containerText = Text(
    "Indian Transport with Best Quality Goods",
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15,
      color: Colors.black87,
    ),
  );
  return containerText;
}
