import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:hot_app/ui/appBar.dart';
import 'package:hot_app/ui/container.dart';

MyApp() {
  FlutterStatusbarcolor.setStatusBarColor(Colors.black38);
  FlutterStatusbarcolor.setNavigationBarColor(Colors.black);
  var myhome = Scaffold(
    appBar: myAppBar(),
    body: Center(
      child: containerColumn(),
    ),
  );

  return MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );
}
