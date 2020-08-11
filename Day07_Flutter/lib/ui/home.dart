import 'package:business_card/ui/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'appbar.dart';

myapp() {
  FlutterStatusbarcolor.setStatusBarColor(
    Colors.black,
  );
  var myhome = Scaffold(
    appBar: myappbar(),
    body: mybody(),
  );
  return MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );
}
