import 'package:flutter/material.dart';
import 'package:second_app/ui/appbar.dart';
import 'package:second_app/ui/container.dart';

myapp() {
  var myhome = Scaffold(
    appBar: homeAppBar(),
    body: Center(child: containerColumn()),
  );

  return MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );
}
