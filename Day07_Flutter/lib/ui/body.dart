import 'package:business_card/ui/container.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

mybody() {
  myprint() {
    Fluttertoast.showToast(
      msg: "Hey, Saurabh here!!",
      textColor: Colors.black,
      backgroundColor: Colors.amber,
    );
  }

  var mybody = Container(
    margin: EdgeInsets.all(20),
    alignment: Alignment.center,
    width: double.infinity,
    height: double.infinity,
    color: Colors.grey[200],
    child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        container_card(),
        //InkWell(
        GestureDetector(
          onDoubleTap: myprint,
          child: container_profile(),
        ),
      ],
    ),
  );
  return mybody;
}
